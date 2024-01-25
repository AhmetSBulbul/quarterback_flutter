import 'package:flutter/material.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/user/current_user.dart';
import 'package:quarterback_flutter/generated/protos/pointspb.pb.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key, required this.player, required this.stats});

  final Player player;
  final Widget stats;
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
        stats,
      ],
    );
  }
}

class PlayerStats extends StatelessWidget {
  const PlayerStats({super.key, required this.stats});

  final UserStats stats;
  // get game count

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Game, Win, Lose, Cancel, Pts,
        StatsItem(
          label: 'Games',
          value: (stats.wins + stats.losses + stats.cancelled).toString(),
        ),
        StatsItem(
          label: 'Win',
          value: stats.wins.toString(),
        ),
        StatsItem(
          label: 'Lose',
          value: stats.losses.toString(),
        ),
        StatsItem(
          label: 'Cancel',
          value: stats.cancelled.toString(),
        ),
        StatsItem(
          label: 'Pts',
          value: stats.totalPoints.toString(),
        ),
        StatsItem(
          label: 'Rank',
          value: stats.rank.toString(),
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
