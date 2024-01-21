import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({required this.path, super.key}) : radius = 25;
  final String path;
  final double radius;

  const Avatar.large({required this.path, super.key}) : radius = 45;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      foregroundImage:
          path.isNotEmpty ? NetworkImage("http://localhost:8080/$path") : null,
      child: Icon(
        Icons.person,
        size: radius * .8,
      ),
    );
  }
}
