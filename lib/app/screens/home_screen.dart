import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:quarterback_flutter/app/widgets/brand/app_icons.dart';
import 'package:quarterback_flutter/app/widgets/brand/logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => context.push('/search'),
            icon: const Icon(Icons.search),
          ),
          IconButton(onPressed: () => {}, icon: const AppIcons.basketball())
        ],
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
