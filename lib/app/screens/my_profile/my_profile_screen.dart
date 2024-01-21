import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/widgets/profile/player_card.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          // Settings?
          IconButton(
            onPressed: () => context.go('/me/edit'),
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () => context.read<AuthCubit>().logout(),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: ListView(
          children: [
            BlocBuilder<CurrentUserCubit, CurrentUserState>(
              builder: (context, state) {
                if (state is CurrentUserLoaded) {
                  return PlayerCard(player: state.user);
                } else {
                  return const CircularProgressIndicator();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
