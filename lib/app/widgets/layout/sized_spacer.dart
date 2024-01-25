import 'package:flutter/material.dart';

class SizedSpacer extends StatelessWidget {
  const SizedSpacer._({required this.height, required this.width});

  final double height;
  final double width;

  const SizedSpacer.xsmall({super.key})
      : height = 4,
        width = 4;

  const SizedSpacer.small({super.key})
      : height = 8,
        width = 8;
  const SizedSpacer.medium({super.key})
      : height = 16,
        width = 16;
  const SizedSpacer.large({super.key})
      : height = 32,
        width = 32;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
