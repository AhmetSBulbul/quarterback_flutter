import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/profile/cubit/profile_cubit.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/profile/player_card.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(
          id: id,
          userRepository: locator<UserRepository>(),
          regionRepository: locator<RegionRepository>())
        ..getProfile(),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (context, currentUserState) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              // TODO: move follow to current user bloc
              // IconButton(
              //   onPressed: () => context
              //       .read<ProfileCubit>()
              //       .toggleFollow()
              //       .then((value) => print("User follow status: $value")),
              //   icon: const Icon(Icons.person_add),
              // ),

              IconButton(
                onPressed: () => context
                    .read<ProfileCubit>()
                    .toggleBlock()
                    .then((value) => print("User block status: $value")),
                icon: const Icon(Icons.block),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                if (state is ProfileLoaded) {
                  return Column(
                    children: [
                      PlayerCard(player: state.user),
                      const SizedSpacer.medium(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          children: [
                            TextButton(
                              child: Text(
                                  (currentUserState as CurrentUserLoaded)
                                          .following
                                          .any((element) =>
                                              element.id == state.user.id)
                                      ? "Unfollow"
                                      : "Follow"),
                              onPressed: () async {
                                try {
                                  await context
                                      .read<CurrentUserCubit>()
                                      .toggleFollow(state.user.id);
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(e.toString()),
                                    ),
                                  );
                                }
                              },
                            ),
                            TextButton(
                              child: const Text("Message"),
                              onPressed: () =>
                                  context.push('/chat/${state.user.id}'),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                } else if (state is ProfileError) {
                  return Center(child: Text(state.cause));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        );
      },
    );
  }
}
