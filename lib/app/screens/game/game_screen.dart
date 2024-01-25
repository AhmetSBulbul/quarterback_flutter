import 'dart:math';

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

final rng = Random();

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (context, userState) {
        if (userState is! CurrentUserLoaded) return const LoadingScreen();
        return BlocConsumer<GameCubit, GameState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error.toString()),
                  // backgroundColor: AppColors.error,
                ),
              );
            }
          },
          builder: (context, state) {
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
                        child: state.isEnded
                            // ? "Cancel Game"
                            ? ElevatedButton(
                                onPressed: () =>
                                    context.read<GameCubit>().cancelGame(),
                                child: const Text("Cancel Game"))
                            : state.isStarted
                                ? ElevatedButton(
                                    // onPressed: () => context
                                    //     .read<GameCubit>()
                                    //     .endGame(
                                    //         rng.nextInt(30), rng.nextInt(30)),
                                    onPressed: () async {
                                      final score = await showDialog<Score?>(
                                        context: context,
                                        builder: (context) => Dialog(
                                          child: ScoreForm(
                                            // onSubmit: (homeScore, awayScore) =>
                                            //     context
                                            //         .read<GameCubit>()
                                            //         .endGame(
                                            //             homeScore, awayScore),
                                            onSubmit: (score) =>
                                                Navigator.pop(context, score),
                                          ),
                                          // actions: [
                                          //   TextButton(
                                          //     onPressed: () =>
                                          //         Navigator.pop(context),
                                          //     child: const Text("Cancel"),
                                          //   ),
                                          //   TextButton(
                                          //     onPressed: () {
                                          //       Navigator.pop(context);
                                          //       context
                                          //           .read<GameCubit>()
                                          //           .endGame(
                                          //               rng.nextInt(30),
                                          //               rng.nextInt(30));
                                          //     },
                                          //     child: const Text("End Game"),
                                          //   ),
                                          // ],
                                        ),
                                      );
                                      if (score != null) {
                                        context
                                            .read<GameCubit>()
                                            .endGame(score.home, score.away);
                                      }
                                    },
                                    child: const Text("End Game"))
                                : state.isPlayer(userState.user.id)
                                    ? ElevatedButton(
                                        onPressed:
                                            state.game.homePlayers.isNotEmpty &&
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
                                            builder: (context) => AlertDialog(
                                              title: const Text("Join Game"),
                                              content: const Text(
                                                  "Which side would you like to join?"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, true),
                                                  child: const Text("Home"),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, false),
                                                  child: const Text("Away"),
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

class Score {
  const Score(this.home, this.away);
  final int home;
  final int away;
}

class ScoreForm extends StatelessWidget {
  ScoreForm({super.key, required this.onSubmit});
  final Function(Score) onSubmit;
  final TextEditingController homeController = TextEditingController();
  final TextEditingController awayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Home"),
                SizedSpacer.small(),
                Expanded(
                  child: TextField(
                    controller: homeController,
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: const InputDecoration(
                      counterText: "",
                    ),
                  ),
                ),
                SizedSpacer.medium(),
                Expanded(
                  child: TextField(
                    controller: awayController,
                    maxLength: 2,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      counterText: "",
                    ),
                  ),
                ),
                SizedSpacer.small(),
                Text("Away"),
              ],
            ),
            ElevatedButton(
                onPressed: () => onSubmit(Score(int.parse(homeController.text),
                    int.parse(awayController.text))),
                child: const Text("End Game"))
          ],
        ),
      ),
    );
  }
}
