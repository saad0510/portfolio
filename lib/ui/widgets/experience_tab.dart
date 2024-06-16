import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/current_user_provider.dart';
import '../../theme/sizes.dart';
import 'stats_card.dart';

class ExperienceTab extends ConsumerWidget {
  const ExperienceTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(currentUserProvider).statistics;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Sizes.s24.spaceY,
          Row(
            children: [
              Expanded(
                child: StatsCard(
                  title: 'Years of Experience',
                  value: stats.experienceInYears.padded,
                  icon: Icons.add,
                ),
              ),
              Sizes.s32.spaceX,
              Expanded(
                child: StatsCard(
                  title: 'Projects Done',
                  value: stats.projectsDone.padded,
                  icon: Icons.add,
                ),
              ),
            ],
          ),
          Sizes.s64.spaceY,
          Row(
            children: [
              Expanded(
                child: StatsCard(
                  title: 'Happy Customers',
                  value: stats.customerSatisfaction.padded,
                  icon: Icons.percent,
                ),
              ),
              Sizes.s32.spaceX,
              Expanded(
                child: StatsCard(
                  title: 'Award Wins',
                  value: stats.awardsWon.padded,
                  icon: Icons.add,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

extension on int {
  String get padded {
    return toString().padLeft(2, '0');
  }
}
