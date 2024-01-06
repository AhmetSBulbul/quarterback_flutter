import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/widgets/brand/app_icons.dart';
import 'package:quarterback_flutter/app/widgets/brand/logo.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';

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
            onPressed: () => context.read<AuthCubit>().logout(),
            icon: const Icon(Icons.logout),
          ),
          IconButton(onPressed: () => {}, icon: const AppIcons.basketball())
        ],
      ),
      body: const Center(child: Text("Home Screen Test 5")),
    );
  }
}
