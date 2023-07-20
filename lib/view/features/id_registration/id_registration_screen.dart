import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/view/features/id_registration_confirm/id_registration_confirm_screen.dart';
import 'package:fourface_id_ocr/view/utils/camera_scanner_overlay.dart';
import 'package:fourface_id_ocr/view/utils/text_detector_painter.dart';
import 'package:image/image.dart' as img;

import 'id_registration_view_model.dart';

class IdRegistrationScreen extends ConsumerStatefulWidget {
  const IdRegistrationScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const IdRegistrationScreen(),
    );
  }

  @override
  IdRegistrationScreenState createState() => IdRegistrationScreenState();
}

class IdRegistrationScreenState extends ConsumerState<IdRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final cameraViewHeight =
        MediaQuery.of(context).size.height + bottomPadding + topPadding;

    final cameraViewModel = ref.watch(cameraViewModelProvider);

    return Scaffold(
      body: cameraViewModel.controller.when(
        data: (data) {
          ref.listen<bool>(
              cameraViewModelProvider.select(
                  (value) => value.isSuccessfullyAnalyzed), (_, next) async {
            if (next) {
              await data.takePicture().then((image) async {
                await cropImage(cameraViewHeight, image).then((value) {
                  Navigator.of(context).push<dynamic>(
                    IdRegistrationConfirmScreen.route(image.path),
                  );
                });
              });
            }
          });

          return SafeArea(
            bottom: false,
            child: Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: AspectRatio(
                      aspectRatio: 1 / data.value.aspectRatio,
                      child: CustomPaint(
                          foregroundPainter: TextDetectorPainter(
                            cameraViewModel.imageSize,
                            cameraViewModel.elements,
                          ),
                          child: CameraPreview(data)),
                    )),
                Container(
                  decoration: const ShapeDecoration(
                    shape: CardScannerOverlayShape(
                      borderColor: Colors.white,
                      borderRadius: 12,
                      borderLength: 32,
                      borderWidth: 8,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (err, stack) {
          return const Text('カメラの起動に失敗しました');
        },
      ),
    );
  }

  Future<void> cropImage(double cameraViewHeight, XFile image) async {
    var bytes = await File(image.path).readAsBytes();
    img.Image? rawSrc = img.decodeImage(bytes);
    final img.Image src = img.bakeOrientation(rawSrc!);

    final offsetX = src.width * offsetXFactor;
    final cardWidth = src.width - offsetX * 2;
    final cardHeight = cardWidth * cardAspectRatio;
    final offsetY = 80 * src.height / cameraViewHeight +
        (src.height - cardHeight - 140 * src.height / cameraViewHeight) / 2;

    img.Image destImage = img.copyCrop(
      src,
      x: offsetX.toInt(),
      y: offsetY.toInt(),
      width: cardWidth.toInt(),
      height: cardHeight.toInt(),
    );

    var jpg = img.encodeJpg(destImage);
    await File(image.path).writeAsBytes(jpg);
  }
}
