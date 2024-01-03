import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:quarterback_flutter/app/app.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(QuarterbackApp());
  Future.delayed(const Duration(seconds: 1), () {
    FlutterNativeSplash.remove();
  });
}
