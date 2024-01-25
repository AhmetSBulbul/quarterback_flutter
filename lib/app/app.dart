import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grpc/grpc.dart';
import 'package:quarterback_flutter/app/screens/auth/login_screen.dart';
import 'package:quarterback_flutter/app/screens/auth/onboard_screen.dart';
import 'package:quarterback_flutter/app/screens/auth/register/register_screen.dart';
import 'package:quarterback_flutter/app/screens/chat/chat_screen.dart';
import 'package:quarterback_flutter/app/screens/chat/chat_session_screen.dart';
import 'package:quarterback_flutter/app/screens/court/court_screen.dart';
import 'package:quarterback_flutter/app/screens/error_screen.dart';
import 'package:quarterback_flutter/app/screens/fixtures/fixtures_screen.dart';
import 'package:quarterback_flutter/app/screens/game/create_game_screen.dart';
import 'package:quarterback_flutter/app/screens/game/game_screen.dart';
import 'package:quarterback_flutter/app/screens/home_screen.dart';
import 'package:quarterback_flutter/app/screens/loading_screen.dart';
import 'package:quarterback_flutter/app/screens/my_profile/edit_my_profile_screen.dart';
import 'package:quarterback_flutter/app/screens/my_profile/my_profile_screen.dart';
import 'package:quarterback_flutter/app/screens/profile/profile_screen.dart';
import 'package:quarterback_flutter/app/screens/search_screen.dart';
import 'package:quarterback_flutter/app/screens/team_screen.dart';
import 'package:quarterback_flutter/app/widgets/layout/bottom_navigation_shell.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/core/theme/app_theme.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';
import 'package:quarterback_flutter/features/chat/cubit/chat_cubit.dart';
import 'package:quarterback_flutter/features/chat/data/chat_repository.dart';
import 'package:quarterback_flutter/features/location/cubit/location_cubit.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';

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
            builder: (context, routerState, child) => BlocProvider(
              create: (context) => CurrentUserCubit(
                userRepository: locator<UserRepository>(),
                regionRepository: locator<RegionRepository>(),
              )..requestCurrentUser(),
              child: Stack(
                children: [
                  // TODO: Refactor this shit.
                  // BottomNavigationShell(state: state, child: child),
                  BlocBuilder<LocationCubit, LocationState>(
                    builder: (context, state) {
                      // TODO: add refresh location request screen
                      if (state.isInitial) {
                        return const LoadingScreen();
                      }
                      if (!state.isLocationServiceEnabled) {
                        return const ErrorScreen();
                      }

                      if (!state.isLocationPermissionGranted) {
                        return const ErrorScreen();
                      }
                      return BlocConsumer<CurrentUserCubit, CurrentUserState>(
                        listener: (context, state) {
                          if (state is CurrentUserError) {
                            if (state.error is GrpcError &&
                                (state.error as GrpcError).code == 13) {
                              // TODO: handle it properly
                              authCubit.logout();
                            }
                          }
                        },
                        builder: (context, state) {
                          if (state is CurrentUserInitial) {
                            return const Positioned.fill(
                              child: LoadingScreen(),
                            );
                          } else if (state is CurrentUserError) {
                            return Positioned.fill(
                              child: Scaffold(
                                body: Center(
                                  child: Text(
                                      "Current User State Error by ${state.cause}: ${state.error}"),
                                ),
                              ),
                            );
                          } else if (state is CurrentUserLoaded) {
                            // return const SizedBox.shrink();
                            return BlocProvider(
                              create: (context) => ChatCubit(
                                meId: state.user.id,
                                repository: locator<ChatRepository>(),
                                userRepository: locator<UserRepository>(),
                              ),
                              child: BlocListener<ChatCubit, ChatState>(
                                listener: (context, chatState) {
                                  if (chatState.newMessage != null &&
                                      routerState.fullPath != '/chat/:id') {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: AppColors.surface,
                                        margin: const EdgeInsets.all(8),
                                        behavior: SnackBarBehavior.floating,
                                        content: Row(
                                          children: [
                                            Avatar(
                                              path: chatState.newMessage!.sender
                                                  .avatarPath,
                                            ),
                                            const SizedSpacer.medium(),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "@${chatState.newMessage!.sender.username}",
                                                    style: context
                                                        .textTheme.bodyMedium,
                                                  ),
                                                  const SizedSpacer.small(),
                                                  Text(chatState.newMessage!
                                                      .message.content),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        action: SnackBarAction(
                                          label: "Open",
                                          onPressed: () {
                                            context.push(
                                                '/chat/${chatState.newMessage!.sender.id}');
                                          },
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: BottomNavigationShell(
                                  state: routerState,
                                  child: child,
                                ),
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
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
                    builder: (context, state) => const TeamScreen(),
                  ),
                  GoRoute(
                      path: 'chat',
                      builder: (context, state) => const ChatScreen(),
                      routes: [
                        GoRoute(
                          path: ':id',
                          builder: (context, state) => ChatSessionScreen(
                            userId: int.parse(state.pathParameters['id']!),
                          ),
                        ),
                      ]),
                  GoRoute(
                    path: 'me',
                    builder: (context, state) => const MyProfileScreen(),
                    routes: [
                      GoRoute(
                        path: 'edit',
                        builder: (context, state) =>
                            const EditMyProfileScreen(),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'search',
                    builder: (context, state) => const SearchScreen(),
                  ),
                  GoRoute(
                      path: 'profile/:id',
                      builder: (context, state) => ProfileScreen(
                          id: int.parse(state.pathParameters['id']!))),
                  GoRoute(
                    path: 'court/:id',
                    builder: (context, state) => CourtScreen(
                      courtId: int.parse(state.pathParameters['id']!),
                    ),
                  ),
                  //
                  // Game
                  //
                  GoRoute(
                    path: 'game/:id',
                    builder: (context, state) => GameScreen(
                      gameId: int.parse(state.pathParameters['id']!),
                    ),
                  ),
                  // Create Game
                  GoRoute(
                    path: 'game',
                    builder: (context, state) => const CreateGameScreen(),
                  ),
                ],
              ),
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>.value(
          value: _authCubit,
        ),
        BlocProvider(
          create: (context) => LocationCubit()..determinePosition(),
        ),
      ],
      child: MaterialApp.router(
        // routerConfig: _buildRouter(_authCubit),
        routerConfig: _router,
        title: 'quarterback',
        theme: AppTheme.theme,
      ),
    );
  }
}
