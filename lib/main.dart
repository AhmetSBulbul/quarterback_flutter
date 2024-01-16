import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quarterback_flutter/app/app.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';
import 'package:quarterback_flutter/features/auth/data/auth_repository.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  await configureDependencies();
  FlutterNativeSplash.remove();
  runApp(
    QuarterbackApp(authCubit: AuthCubit(repository: locator<AuthRepository>())),
  );
  // Future.delayed(const Duration(seconds: 1), () {
  //   FlutterNativeSplash.remove();
  // });
}
