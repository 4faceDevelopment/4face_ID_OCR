import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/service/rest_api/domain/user_response.dart';
import 'package:fourface_id_ocr/service/rest_api/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

part 'id_registration_view_model.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(false) bool isLoading,
    UserResponse? user,
  }) = _UserState;
}

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    @Default(AsyncValue.loading()) AsyncValue<CameraController> controller,
    Size? imageSize,
    List<TextElement>? elements,
  }) = _CameraState;
}

final userViewModelProvider = StateNotifierProvider<UserViewModel, UserState>(
  (ref) => UserViewModel._(ref),
);

final cameraViewModelProvider =
    StateNotifierProvider<CameraViewModel, CameraState>(
  (ref) => CameraViewModel._(ref),
);

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel._(this._ref) : super(const UserState());

  final Ref _ref;

  Future<void> fetchResponse(int id) async {
    state = state.copyWith(isLoading: true);
    final result = await _ref.read(userRepositoryProvider).fetch(id);
    state = state.copyWith(
      isLoading: false,
      user: result,
    );
  }
}

class CameraViewModel extends StateNotifier<CameraState> {
  CameraViewModel._(this._ref) : super(const CameraState()) {
    initializeCameraController();
  }

  final Ref _ref;

  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

  late CameraDescription camera;
  late CameraController controller;

  bool isDetecting = false;

  Future<void> initializeCameraController() async {
    state = state.copyWith(controller: const AsyncValue.loading());

    final cameras = await availableCameras();
    camera = cameras.first;
    controller = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
    );
    _ref.onDispose(() {
      controller.dispose();
    });
    await controller.initialize();
    controller.startImageStream(_processImage);

    state = state.copyWith(controller: AsyncValue.data(controller));
  }

  // フレームデータを受け取る
  void _processImage(CameraImage cameraImage) async {
    if (!isDetecting && mounted) {
      isDetecting = true;
      final inputImage = convert(cameraImage);

      try {
        debugPrint('start textRecognizer');
        final RecognizedText recognizedText =
            await textRecognizer.processImage(inputImage);
        List<TextElement> detectedElements = [];
        for (TextBlock block in recognizedText.blocks) {
          for (TextLine line in block.lines) {
            for (TextElement element in line.elements) {
              detectedElements.add(element);
            }
          }
        }

        state = state.copyWith(
          imageSize:
              Size(cameraImage.height.toDouble(), cameraImage.width.toDouble()),
          elements: detectedElements,
        );
      } catch (ex, stack) {
        debugPrint('Error: $ex, $stack');
      }
      await Future.delayed(const Duration(milliseconds: 250));
      isDetecting = false;
    }
  }

  InputImage convert(CameraImage image) {
    final WriteBuffer allBytes = WriteBuffer();
    for (final Plane plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final Size imageSize =
        Size(image.width.toDouble(), image.height.toDouble());

    final InputImageRotation imageRotation =
        _rotationIntToImageRotation(camera.sensorOrientation);

    final InputImageFormat inputImageFormat =
        InputImageFormatValue.fromRawValue(image.format.raw) ??
            InputImageFormat.nv21;

    final planeData = image.planes.map(
      (Plane plane) {
        return InputImagePlaneMetadata(
          bytesPerRow: plane.bytesPerRow,
          height: plane.height,
          width: plane.width,
        );
      },
    ).toList();

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: imageRotation,
      inputImageFormat: inputImageFormat,
      planeData: planeData,
    );

    return InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
  }

  InputImageRotation _rotationIntToImageRotation(int rotation) {
    switch (rotation) {
      case 0:
        return InputImageRotation.rotation0deg;
      case 90:
        return InputImageRotation.rotation90deg;
      case 180:
        return InputImageRotation.rotation180deg;
      case 270:
        return InputImageRotation.rotation270deg;
    }
    return InputImageRotation.rotation0deg;
  }
}
