import 'package:flutter/material.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/user/current_user.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key, required this.player});

  final Player player;
  // final Stats stats;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Avatar.large(path: player.avatarPath),
        const SizedSpacer.medium(),
        Text(
          '@${player.username}',
          style: context.textTheme.headlineSmall?.copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedSpacer.small(),
        Text(
          '${player.name} ${player.lastName}',
          style: context.textTheme.titleMedium,
        ),
        const SizedSpacer.small(),
        Text(
          '${player.district.name} League',
          style: context.textTheme.bodyMedium,
        ),
        const SizedSpacer.large(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Game, Win, Lose, Cancel, Pts,
            StatsItem(
              label: 'Games',
              value: 'N/A',
            ),
            StatsItem(
              label: 'Win',
              value: 'N/A',
            ),
            StatsItem(
              label: 'Lose',
              value: 'N/A',
            ),
            StatsItem(
              label: 'Cancel',
              value: 'N/A',
            ),
            StatsItem(
              label: 'Pts',
              value: 'N/A',
            ),
            StatsItem(
              label: 'Rank',
              value: 'N/A',
            ),
          ],
        ),
      ],
    );
  }
}

class StatsItem extends StatelessWidget {
  const StatsItem({super.key, required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: context.textTheme.bodySmall,
        ),
        const SizedSpacer.small(),
        Text(
          label,
          style: context.textTheme.labelMedium,
        ),
      ],
    );
  }
}
