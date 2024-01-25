import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/screens/home_screen.dart';
import 'package:quarterback_flutter/app/screens/loading_screen.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/profile/player_card.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/fixture/fixture_repository.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';

class FixturesScreen extends StatelessWidget {
  const FixturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (context, userState) {
        if (userState is! CurrentUserLoaded) return const LoadingScreen();
        return Scaffold(
          appBar: AppBar(
            title: const Text("Fixtures"),
            centerTitle: false,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  color: AppColors.surface,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Center(
                      child: Text(
                        "${userState.user.district.name} League",
                        style: context.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ),
                const SizedSpacer.medium(),
                Expanded(
                    child: FutureLoader(
                  future: locator<FixtureRepository>()
                      .getFixtureByDistrict(userState.user.district.id),
                  builder: (BuildContext context, data) {
                    final sortedUserPoints = data.userPoints;
                    sortedUserPoints
                        .sort((a, b) => b.totalPoints.compareTo(a.totalPoints));
                    return ListView(children: [
                      Material(
                        textStyle: context.textTheme.titleMedium,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "User",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )),
                            Expanded(child: Text("Wins")),
                            Expanded(child: Text("Losses")),
                            Expanded(child: Text("Pts")),
                          ],
                        ),
                      ),
                      const SizedSpacer.medium(),
                      for (var stat in sortedUserPoints)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  stat.username,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )),
                            Expanded(child: Text(stat.wins.toString())),
                            Expanded(child: Text(stat.losses.toString())),
                            Expanded(child: Text(stat.totalPoints.toString())),
                          ],
                        ),
                    ]);
                  },
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
