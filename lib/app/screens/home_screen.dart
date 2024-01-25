// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/court/court_screen.dart';

import 'package:quarterback_flutter/app/widgets/brand/app_icons.dart';
import 'package:quarterback_flutter/app/widgets/brand/logo.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/court/data/court_repository.dart';
import 'package:quarterback_flutter/features/game/game_repository.dart';
import 'package:quarterback_flutter/features/location/cubit/location_cubit.dart';
import 'package:quarterback_flutter/generated/protos/courtpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/gamepb.pb.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, location) {
        return Scaffold(
          backgroundColor: AppColors.black,
          appBar: AppBar(
            title: const Logo(),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () => context.push('/search'),
                icon: const Icon(Icons.search),
              ),
              IconButton(
                // onPressed: () => context.push('/game'),
                onPressed: () async {
                  final courtId = await showModalBottomSheet<int?>(
                    context: context,
                    useRootNavigator: true,
                    backgroundColor: Colors.transparent,
                    // barrierColor: AppColors.black.withOpacity(0.8),
                    barrierColor: Colors.black.withOpacity(0.8),
                    elevation: 0,
                    builder: (context) {
                      return DraggableScrollableSheet(
                        initialChildSize: .6,
                        builder: (context, sc) {
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 14.0, horizontal: 8.0),
                              child: FutureLoader(
                                future: locator<CourtRepository>()
                                    .listCourtsByLocation(
                                        ListCourtByLocationRequest(
                                            location: location.data!)),
                                builder: (context, data) {
                                  return SingleChildScrollView(
                                      controller: sc,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Select Court",
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                          ),
                                          const SizedSpacer.small(),
                                          // TODO: Move it to the court card
                                          Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              InkWell(
                                                onTap: () => context.pop(
                                                    data.courts.first.court.id),
                                                child: CourtCard(
                                                  court:
                                                      data.courts.first.court,
                                                  featured: true,
                                                ),
                                              ),
                                              Positioned(
                                                bottom: -8,
                                                right: 0,
                                                child: Chip(
                                                  backgroundColor:
                                                      AppColors.primary,
                                                  // TODO: Use this color
                                                  // backgroundColor: Colors.orange[900],
                                                  // color: MaterialStateProperty.all(
                                                  //   AppColors.primary,
                                                  // ),
                                                  // surfaceTintColor: AppColors.primary,

                                                  side: BorderSide(
                                                    color: AppColors.white,
                                                    width: 1.5,
                                                  ),

                                                  // avatar: CircleAvatar(
                                                  //   child: Image(
                                                  //     image: NetworkImage(
                                                  //         "https://avatar.iran.liara.run/public/boy?username=1"),
                                                  //   ),
                                                  // ),

                                                  // Label
                                                  labelStyle: context
                                                      .textTheme.labelSmall
                                                      ?.copyWith(
                                                    color: AppColors.white,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12,
                                                  ),
                                                  label: Text(
                                                    "Nearby",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedSpacer.large(),
                                          Divider(
                                            color: AppColors.grey,
                                            thickness: 2,
                                          ),
                                          const SizedSpacer.medium(),
                                          ...data.courts.skip(1).map(
                                                (c) => InkWell(
                                                  onTap: () =>
                                                      context.pop(c.court.id),
                                                  child: CourtCard(
                                                    court: c.court,
                                                    distance: c.distance,
                                                  ),
                                                ),
                                              ),
                                        ],
                                      ));
                                },
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                  if (courtId != null) {
                    final createdGame =
                        await locator<GameRepository>().createGame(courtId);
                    print(createdGame.homePlayers);
                  }
                },
                icon: const AppIcons.basketball(),
              )
            ],
          ),
          body: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Card(
                        color: AppColors.surface,
                        child: SizedBox(
                          width: 250,
                          height: 160,
                          child: Center(
                            child: Text("Game"),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                    "${location.data?.latitude} , ${location.data?.longitude}"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TabBar(
                    tabs: [
                      Tab(
                        text: "Courts",
                      ),
                      Tab(
                        text: "Games",
                      ),
                      Tab(
                        text: "Events",
                      )
                    ],
                  ),
                ),
                SizedSpacer.small(),
                // TODO: add blur
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TabBarView(
                      children: [
                        // TODO: Make it paginated

                        // Courts Tab
                        FutureLoader<CourtsWithDistance>(
                          future: locator<CourtRepository>()
                              .listCourtsByLocation(ListCourtByLocationRequest(
                                  location: location.data!)),
                          builder: (context, data) {
                            return ListView.builder(
                              itemCount: data.courts.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: CourtCard(
                                    court: data.courts[index].court,
                                    distance: data.courts[index].distance,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        //
                        // Games Tab
                        FutureLoader<List<Game>>(
                          future: locator<GameRepository>().listGamesByLocation(
                              ListGamesByLocationRequest(
                                  location: location.data!)),
                          builder: (context, data) {
                            return ListView.builder(
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: GameCard(
                                    game: data[index],
                                  ),
                                );
                              },
                            );
                          },
                        ),

                        // Events Tab
                        Center(
                          child: Text("Under Development"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Widget for displaying future values with [FutureBuilder]
///
/// Handles loading, error and empty states
class FutureLoader<T> extends StatelessWidget {
  const FutureLoader(
      {super.key,
      required this.future,
      required this.builder,
      this.emptyMessage,
      this.emptyWidget});
  final Future<T> future;
  final Function(BuildContext context, T data) builder;
  final String? emptyMessage;
  final Widget? emptyWidget;

  Widget _buildEmpty(BuildContext context) {
    return emptyWidget ??
        Center(
          child: Text(
            emptyMessage ?? "No Data",
            style: context.textTheme.displayMedium,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      builder: (context, AsyncSnapshot<T> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data == null ||
              (snapshot.data is List && (snapshot.data as List).isEmpty)) {
            return _buildEmpty(context);
          } else {
            return builder(context, snapshot.data!);
          }
        } else if (snapshot.hasError) {
          return Center(child: Text("${snapshot.error}"));
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({
    required this.game,
    super.key,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // "Bornova",
                  game.court.district.name,
                  style: context.textTheme.labelSmall,
                ),
                Text(
                  // TODO: add date
                  // TODO: Make it component
                  game.hasEnded()
                      ? "Full Time"
                      : game.hasStarted()
                          ? "Live"
                          : "Waiting",
                  style: context.textTheme.labelSmall,
                )
              ],
            ),
            SizedSpacer.medium(),
            // Body
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      // TODO: Remove Avatar Stack
                      AvatarStack(
                        // width: 150,
                        height: 30,
                        borderColor: AppColors.black,
                        avatars: [
                          for (var n = 0; n < game.homePlayers.length; n++)
                            NetworkImage(
                                "https://avatar.iran.liara.run/public/boy?username=$n")
                        ],
                      ),
                      SizedSpacer.small(),
                      Text(
                        "Home",
                        style: context.textTheme.bodyMedium
                            ?.copyWith(color: AppColors.white),
                      )
                    ],
                  ),
                ),
                SizedSpacer.large(),
                Text(
                  game.hasEnded()
                      ? "${game.ended.homeScore} - ${game.ended.awayScore}"
                      : "VS",
                  style: context.textTheme.titleLarge?.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.w800),
                ),
                SizedSpacer.large(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AvatarStack(
                        // width: 150,
                        height: 30,

                        borderColor: AppColors.black,
                        avatars: [
                          for (var n = 0; n < game.awayPlayers.length; n++)
                            NetworkImage(
                                "https://avatar.iran.liara.run/public/boy?username=${n + 4}")
                        ],
                      ),
                      SizedSpacer.small(),
                      Text(
                        "Away",
                        style: context.textTheme.bodyMedium
                            ?.copyWith(color: AppColors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedSpacer.large(),

            // Footer
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://www.bizimizmir.net/images_haberler/2018/11/12/haber-2018-11-11-1541968659697-bornovada.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedSpacer.medium(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // "75. Yil Parki",
                        game.court.name,
                        style: context.textTheme.titleSmall
                            ?.copyWith(color: AppColors.white),
                      ),
                      Text(
                        // "Bornova",
                        game.court.district.name,
                        style: context.textTheme.labelSmall,
                      ),
                    ],
                  ),
                )
              ],
            ),

            // Court Card Light is required here
            SizedSpacer.large(),

            ElevatedButton(
              // TODO: Maybe add game as extra
              onPressed: () => context.push('/game/${game.id}'),
              child: Text("Details"),
            ),
          ],
        ),
      ),
    );
  }
}
