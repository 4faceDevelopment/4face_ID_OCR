import 'package:flutter/material.dart';
import 'package:fourface_id_ocr/view/features/home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FOURFACE',
      home: HomeScreen(),
    );
  }
}
