import 'package:flutter/material.dart';

class FixturesScreen extends StatelessWidget {
  const FixturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fixtures"),
        centerTitle: false,
      ),
      body: const Center(child: Text("Fixtures Screen")),
    );
  }
}
