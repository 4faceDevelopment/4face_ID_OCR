import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

part 'id_registration_view_model.freezed.dart';

@freezed
class IdRegistrationState with _$IdRegistrationState {
  const factory IdRegistrationState({
    @Default(AsyncValue.loading()) AsyncValue<CameraController> controller,
    Size? imageSize,
    List<TextElement>? elements,
  }) = _IdRegistrationState;
}

final idRegistrationViewModelProvider =
    StateNotifierProvider<IdRegistrationViewModel, IdRegistrationState>(
  (ref) => IdRegistrationViewModel._(ref),
);

class IdRegistrationViewModel extends StateNotifier<IdRegistrationState> {
  IdRegistrationViewModel._(this._ref) : super(const IdRegistrationState()) {
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

  Future<void> fetchResponse() async {}
}
