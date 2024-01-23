import 'package:flutter/material.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team"),
        automaticallyImplyLeading: false,
        centerTitle: false,
      ),
      body: const Center(
        child: Text("Under Development"),
      ),
    );
  }
}
