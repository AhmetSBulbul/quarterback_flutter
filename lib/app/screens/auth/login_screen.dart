import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/auth/login/cubit/login_cubit.dart';

import 'package:quarterback_flutter/app/widgets/animation/fade_in_intro.dart';
import 'package:quarterback_flutter/app/widgets/brand/logo.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';

import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pbgrpc.dart';

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
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: AppColors.black.withAlpha(150),
        body: Column(
          children: [
            // Logo
            const Expanded(
              child: SafeArea(
                child: Center(
                  child: FadeInIntro(child: Logo.large()),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
                child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Welcome",
                          style: context.textTheme.displaySmall?.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        const SizedSpacer.large(),
                        TextField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            labelText: "Email",
                          ),
                          onChanged: context.read<LoginCubit>().emailChanged,
                        ),
                        const SizedSpacer.medium(),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key),
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(state.isObscurePassword
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined),
                              onPressed: () => context
                                  .read<LoginCubit>()
                                  .toggleObscurePassword(),
                            ),
                          ),
                          obscureText: state.isObscurePassword,
                          onChanged: context.read<LoginCubit>().passwordChanged,
                        ),
                        const SizedSpacer.small(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text("Forgot password?",
                                style: context.textTheme.labelSmall),
                            onPressed: () {},
                          ),
                        ),
                        const SizedSpacer.small(),
                        ElevatedButton(
                          onPressed: state.isValid
                              ? () async {
                                  try {
                                    await context.read<AuthCubit>().login(
                                          LoginRequest(
                                            username: state.email.value,
                                            password: state.password.value,
                                          ),
                                        );
                                  } catch (e) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(e.toString()),
                                      ),
                                    );
                                  }
                                }
                              : null,
                          child: const Text("Login"),
                        ),
                        const SizedSpacer.medium(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: context.textTheme.labelMedium,
                            ),
                            TextButton(
                              child: const Text("Sign up"),
                              onPressed: () => context.go('/auth/register'),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
