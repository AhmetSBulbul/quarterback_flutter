import 'dart:ui';

import 'package:flutter/material.dart';

abstract final class AppColors {
  static const Color primary = Color(0xFFF63D68);
  static const Color secondary = Color(0xFF246BFD);
  static const Color black = Color(0xFF161616);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF5D5C64);
  static const Color lightGrey = Color(0xFFB6B6B6);
  static const Color surface = Color(0xFF1E1E1E);
  static const Color success500 = Color(0xFF12B76A);
  static const Color success700 = Color(0xFF027A48);
  static const Color success50 = Color(0xFFECFDF3);
  static const Image basketball = Image(
    width: 36,
    height: 36,
    image: AssetImage("assets/icons/basketball.png"),
  );
}
