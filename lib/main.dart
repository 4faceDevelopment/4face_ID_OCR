import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/gen/assets.gen.dart';
import 'package:fourface_id_ocr/utils/environment.dart';
import 'package:fourface_id_ocr/utils/provider_logger.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'view/app.dart';

// env
final dotEnv = DotEnv();
final getIt = GetIt.instance;

final logger = Logger(
  level: Level.info,
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 8,
    lineLength: 120,
    colors: !Platform.isIOS,
    printEmojis: false,
    printTime: false,
  ),
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();

  await Future.wait([
    Future(() async {
      await dotEnv.load(fileName: Assets.env.env);
    }),
  ]);

  GetIt.I.registerSingleton(
    Environment(
      apiEndpoint: dotEnv.get('API_ENDPOINT'),
      userAgent: Platform.isIOS ? 'ios' : 'android',
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(
    ProviderScope(
      observers: [
          ProviderLogger(),
      ],
      child: const App(),
    ),
  );
}
