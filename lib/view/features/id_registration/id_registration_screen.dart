import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/view/utils/text_detector_painter.dart';

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
    final cameraController = ref.watch(cameraViewModelProvider);

    return Scaffold(
      body: cameraController.controller.when(
        data: (data) => Center(
            child: CustomPaint(
                foregroundPainter: TextDetectorPainter(
                  cameraController.imageSize,
                  cameraController.elements,
                ),
                child: CameraPreview(data))),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (err, stack) {
          return const Text('カメラの起動に失敗しました');
        },
      ),
    );
  }
}
