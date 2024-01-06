import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key}) : height = 24;
  final double? height;

  const Logo.large({super.key}) : height = null;
  const Logo.small({super.key}) : height = 16;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/brand/quarterback.png',
      height: height,
    );
  }
}
