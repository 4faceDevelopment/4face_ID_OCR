import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/view/features/id_registration/id_registration_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  int userId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: DropdownButtonFormField<int>(
                value: userId,
                onChanged: (int? newValue) {
                  setState(() {
                    userId = newValue!;
                  });
                },
                items: [for (int i = 0; i < 21; i++) i]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'ユーザーIDを指定してください',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showRequestPermissionDialog(context);
              },
              child: const Text('本人確認へ'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showRequestPermissionDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('写真と動画の撮影を4faceに許可しますか'),
          // content: const Text('QRコードを読み取る為にカメラを利用します'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('拒否'),
            ),
            ElevatedButton(
              onPressed: () async {
                await Permission.camera.request().isGranted.then((value) async {
                  if (value) {
                    Navigator.pop(context);
                    Navigator.of(context)
                        .push<dynamic>(IdRegistrationScreen.route());
                  } else {
                    Navigator.pop(context);
                    openAppSettings();
                  }
                });
              },
              child: const Text('許可'),
            ),
          ],
        );
      },
    );
  }
}
