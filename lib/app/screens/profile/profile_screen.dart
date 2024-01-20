import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: ListView(
          children: [
            BlocBuilder<CurrentUserBloc, CurrentUserState>(
              builder: (context, state) {
                if (state is CurrentUserLoaded) {
                  return Column(
                    children: [
                      if (state.user.avatarPath.isNotEmpty) ...[
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'http://0.0.0.0:8080/${state.user.avatarPath}'),
                        ),
                        const SizedSpacer.large(),
                      ],
                      Text(
                        '@${state.user.username}',
                        style: context.textTheme.headlineSmall?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const SizedSpacer.small(),
                      Text(
                        '${state.user.name} ${state.user.lastName}',
                        style: context.textTheme.titleMedium,
                      ),
                      const SizedSpacer.small(),
                      Text(
                        '${state.user.district.name} League',
                        style: context.textTheme.bodyMedium,
                      ),
                    ],
                  );
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
