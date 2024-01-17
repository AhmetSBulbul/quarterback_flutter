import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/auth/login_screen.dart';
import 'package:quarterback_flutter/app/screens/auth/onboard_screen.dart';
import 'package:quarterback_flutter/app/screens/auth/register/register_screen.dart';
import 'package:quarterback_flutter/app/screens/error_screen.dart';
import 'package:quarterback_flutter/app/screens/fixtures/fixtures_screen.dart';
import 'package:quarterback_flutter/app/screens/home_screen.dart';
import 'package:quarterback_flutter/app/screens/loading_screen.dart';
import 'package:quarterback_flutter/app/screens/search_screen.dart';
import 'package:quarterback_flutter/app/widgets/layout/bottom_navigation_shell.dart';
import 'package:quarterback_flutter/core/theme/app_theme.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';

class QuarterbackApp extends StatelessWidget {
  QuarterbackApp({super.key, required AuthCubit authCubit})
      : _authCubit = authCubit,
        _router = _buildRouter(authCubit);

  final AuthCubit _authCubit;
  final GoRouter _router;

  static GoRouter _buildRouter(AuthCubit authCubit) => GoRouter(
        initialLocation: '/',
        routes: [
          ShellRoute(
            builder: (context, state, child) =>
                BottomNavigationShell(state: state, child: child),
            routes: [
              GoRoute(
                  path: '/',
                  builder: (context, state) => const HomeScreen(),
                  routes: [
                    GoRoute(
                      path: 'fixtures',
                      builder: (context, state) => const FixturesScreen(),
                    ),
                    GoRoute(
                      path: 'team',
                      builder: (context, state) => const HomeScreen(),
                    ),
                    GoRoute(
                      path: 'chat',
                      builder: (context, state) => const HomeScreen(),
                    ),
                    GoRoute(
                      path: 'profile',
                      builder: (context, state) => const HomeScreen(),
                    ),
                    GoRoute(
                      path: 'search',
                      builder: (context, state) => const SearchScreen(),
                    )
                  ]),
            ],
          ),
          GoRoute(
            path: '/auth',
            builder: (context, state) => const OnboardScreen(),
            routes: [
              GoRoute(
                path: 'login',
                builder: (context, state) => const LoginScreen(),
              ),
              GoRoute(
                path: 'register',
                builder: (context, state) => RegisterScreen(),
              ),
            ],
          ),
          GoRoute(
            path: '/loading',
            builder: (context, state) => const LoadingScreen(),
          )
        ],
        errorBuilder: (context, state) => const ErrorScreen(),
        refreshListenable: authCubit,
        redirect: (context, state) {
          final authState = authCubit.state;
          final isAuthenticating = state.fullPath?.startsWith('/auth') ?? false;
          final isAtLoading = state.fullPath?.startsWith('/loading') ?? false;
          if (authState is AuthInitial && !isAtLoading) {
            return '/loading';
          } else if (authState is AuthAuthenticated &&
              (isAuthenticating || isAtLoading)) {
            return '/';
          } else if (authState is AuthUnauthenticated && !isAuthenticating) {
            return '/auth';
          }

          return null;
        },
      );

  // final _router = GoRouter(
  //   routes: [
  //     GoRoute(
  //       path: '/',
  //       builder: (context, state) => const LoginScreen(),
  //     ),
  //   ],
  // );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>.value(
      value: _authCubit,
      child: MaterialApp.router(
        // routerConfig: _buildRouter(_authCubit),
        routerConfig: _router,
        title: 'quarterback',
        theme: AppTheme.theme,
      ),
    );
  }
}
