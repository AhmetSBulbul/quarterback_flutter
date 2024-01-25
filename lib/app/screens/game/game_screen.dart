import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key, required this.gameId});
  final int gameId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      body: const Center(
        child: Text('Game'),
      ),
    );
  }
}
