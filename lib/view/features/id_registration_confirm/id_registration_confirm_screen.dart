import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/view/features/id_registration_confirm/id_registration_confirm_view_model.dart';

class IdRegistrationConfirmScreen extends ConsumerStatefulWidget {
  const IdRegistrationConfirmScreen({required this.imagePath, Key? key})
      : super(key: key);
  final String imagePath;

  static Route<dynamic> route(String imagePath) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => IdRegistrationConfirmScreen(
        imagePath: imagePath,
      ),
    );
  }

  @override
  IdRegistrationConfirmScreenState createState() =>
      IdRegistrationConfirmScreenState();
}

class IdRegistrationConfirmScreenState
    extends ConsumerState<IdRegistrationConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    final userRegistrationIdViewModel =
        ref.watch(userRegistrationIdViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('身分証確認画面')),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text('姓：${userRegistrationIdViewModel.surname}'),
            const SizedBox(
              height: 20,
            ),
            Text('名：${userRegistrationIdViewModel.givenName}'),
            const SizedBox(
              height: 20,
            ),
            Text('ID番号：${userRegistrationIdViewModel.idNumber}'),
            const SizedBox(
              height: 20,
            ),
            Text('生年月日：${userRegistrationIdViewModel.birthDate}'),
            const SizedBox(
              height: 20,
            ),
            Text('有効期限：${userRegistrationIdViewModel.expiredDate}'),
            const SizedBox(
              height: 20,
            ),
            Image.file(
              File(widget.imagePath),
            ),
          ],
        ),
      ),
    );
  }
}
