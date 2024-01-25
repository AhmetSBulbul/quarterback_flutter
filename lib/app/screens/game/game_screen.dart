import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/error_screen.dart';
import 'package:quarterback_flutter/app/screens/home_screen.dart';
import 'package:quarterback_flutter/app/screens/loading_screen.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/game/cubit/game_cubit.dart';
import 'package:quarterback_flutter/features/game/game_repository.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';
import 'package:quarterback_flutter/generated/protos/gamepb.pb.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key, required this.gameId, required this.game});
  final int gameId;
  final Game game;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameCubit(
        initial: game,
        gameRepository: locator<GameRepository>(),
      ),
      child: const GameView(),
    );
  }
}

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (context, userState) {
        if (userState is! CurrentUserLoaded) return const LoadingScreen();
        return BlocBuilder<GameCubit, GameState>(
          builder: (context, state) {
            if (state.error != null) {
              // TODO: handle properly
              return const ErrorScreen();
            }
            return Scaffold(
              appBar: AppBar(
                title: const Text('Game'),
                actions: [
                  if (state.isPlayer(userState.user.id) && state.isWaiting)
                    IconButton(
                      onPressed: () => context.read<GameCubit>().leaveGame(),
                      icon: const Icon(Icons.exit_to_app),
                    ),
                ],
              ),
              bottomNavigationBar: (state.isPlayer(userState.user.id) ||
                          state.isWaiting) &&
                      !state.game.canceledBy
                          .any((element) => element.id == userState.user.id)
                  ? SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 12.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: state.isEnded
                                  // ? "Cancel Game"
                                  ? ElevatedButton(
                                      onPressed: () => context
                                          .read<GameCubit>()
                                          .cancelGame(),
                                      child: const Text("Cancel Game"))
                                  : state.isStarted
                                      ? ElevatedButton(
                                          onPressed: () => context
                                              .read<GameCubit>()
                                              .endGame(13, 5),
                                          child: const Text("End Game"))
                                      : state.isPlayer(userState.user.id)
                                          ? ElevatedButton(
                                              onPressed: state.game.homePlayers
                                                          .isNotEmpty &&
                                                      state.game.awayPlayers
                                                          .isNotEmpty
                                                  ? () => context
                                                      .read<GameCubit>()
                                                      .startGame()
                                                  : null,
                                              child: const Text("Start Game"))
                                          : ElevatedButton(
                                              onPressed: () async {
                                                final isHomeSide =
                                                    await showDialog<bool?>(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                    title:
                                                        const Text("Join Game"),
                                                    content: const Text(
                                                        "Which side would you like to join?"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context, true),
                                                        child:
                                                            const Text("Home"),
                                                      ),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context, false),
                                                        child:
                                                            const Text("Away"),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                                if (isHomeSide != null) {
                                                  context
                                                      .read<GameCubit>()
                                                      .joinGame(isHomeSide);
                                                }
                                              },
                                              child: const Text("Join Game"),
                                            ),
                            ),
                            const SizedSpacer.small(),
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    AppColors.secondary,
                                  ),
                                ),
                                child: const Icon(Icons.refresh),
                                onPressed: () =>
                                    context.read<GameCubit>().refresh(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : null,
              body: Column(
                children: [
                  GameCard(game: state.game),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
