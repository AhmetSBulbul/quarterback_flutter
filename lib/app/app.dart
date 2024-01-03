import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/auth/login_screen.dart';
import 'package:quarterback_flutter/core/theme/app_theme.dart';

class QuarterbackApp extends StatelessWidget {
  QuarterbackApp({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'quarterback',
      theme: AppTheme.theme,
    );
  }
}
