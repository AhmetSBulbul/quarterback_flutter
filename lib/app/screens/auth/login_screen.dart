import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quarterback_flutter/app/widgets/animation/fade_in_intro.dart';
import 'package:quarterback_flutter/app/widgets/brand/logo.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';

import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Logo
          const Expanded(
            child: Center(
              child: FadeInIntro(child: Logo.large()),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Welcome",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                  const SizedSpacer.large(),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email",
                    ),
                  ),
                  const SizedSpacer.medium(),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key),
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility_off_outlined),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const SizedSpacer.small(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: Text("Forgot password?",
                          style: Theme.of(context).textTheme.labelSmall),
                      onPressed: () {},
                    ),
                  ),
                  const SizedSpacer.small(),
                  ElevatedButton(
                    child: const Text("Login"),
                    onPressed: () => context.read<AuthCubit>().login(),
                  ),
                  const SizedSpacer.medium(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      TextButton(
                        child: const Text("Sign up"),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
