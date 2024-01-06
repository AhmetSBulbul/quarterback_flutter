import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<AuthCubit>().logout(),
        child: const Icon(Icons.logout),
      ),
      body: const Center(child: Text("Home Screen Test 5")),
    );
  }
}
