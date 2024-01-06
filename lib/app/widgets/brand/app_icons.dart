import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  const AppIcons({super.key, required this.src, this.width, this.height});
  final double? width;
  final double? height;
  final String src;

  const AppIcons.basketball({super.key, this.width, this.height})
      : src = 'assets/icons/basketball.png';

  @override
  Widget build(BuildContext context) {
    return Image.asset(src, width: width ?? 28, height: height ?? 28);
  }
}
