import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:quarterback_flutter/app/app.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await configureDependencies();
  FlutterNativeSplash.remove();
  runApp(QuarterbackApp(
    authCubit: locator<AuthCubit>(),
  ));
  // Future.delayed(const Duration(seconds: 1), () {
  //   FlutterNativeSplash.remove();
  // });
}
