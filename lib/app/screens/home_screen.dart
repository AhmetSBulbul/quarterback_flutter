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
import 'package:quarterback_flutter/features/location/cubit/location_cubit.dart';
import 'package:quarterback_flutter/generated/protos/courtpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pb.dart';

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
              IconButton(onPressed: () => {}, icon: const AppIcons.basketball())
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
                        // Courts Tab
                        FutureBuilder(
                            future: locator<CourtRepository>()
                                .listCourtsByLocation(
                                    ListCourtByLocationRequest(
                                        location: location.data!)),
                            builder: (context,
                                AsyncSnapshot<CourtsWithDistance> snapshot) {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                  itemCount: snapshot.data!.courts.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: CourtCard(
                                        court:
                                            snapshot.data!.courts[index].court,
                                        distance: snapshot
                                            .data!.courts[index].distance,
                                      ),
                                    );
                                  },
                                );
                              } else if (snapshot.hasError) {
                                return Center(child: Text("${snapshot.error}"));
                              }
                              return Center(
                                  child: const CircularProgressIndicator());
                            }),
                        //
                        // Games Tab
                        ListView(
                          children: [
                            GameCard(),
                            GameCard(),
                            GameCard(),
                          ],
                        ),
                        //
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

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
  });

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
                  "Bornova",
                  style: context.textTheme.labelSmall,
                ),
                Text(
                  "Full Time",
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
                      AvatarStack(
                        // width: 150,
                        height: 30,
                        borderColor: AppColors.black,
                        avatars: [
                          for (var n = 0; n < 4; n++)
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
                  "16 - 24",
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
                          for (var n = 0; n < 4; n++)
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
                        "75. Yil Parki",
                        style: context.textTheme.titleSmall
                            ?.copyWith(color: AppColors.white),
                      ),
                      Text(
                        "Bornova",
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
              onPressed: () {},
              child: Text("Details"),
            ),
          ],
        ),
      ),
    );
  }
}
