import 'package:flutter/material.dart';

class SizedSpacer extends StatelessWidget {
  const SizedSpacer({super.key, required this.height});

  final double height;

  const SizedSpacer.small({super.key}) : height = 8;
  const SizedSpacer.medium({super.key}) : height = 16;
  const SizedSpacer.large({super.key}) : height = 32;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
