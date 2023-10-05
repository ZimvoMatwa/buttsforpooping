import 'package:blockbucks/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:blockbucks/service_locator.dart' as service;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await service.registerServices();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const BlocBucks());
}
