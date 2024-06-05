import 'package:flutter/material.dart';

import '../../theme/sizes.dart';
import 'stats_card.dart';

class ExperienceTab extends StatelessWidget {
  const ExperienceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Sizes.s24.spaceY,
          Row(
            children: [
              const Expanded(
                child: StatsCard(
                  title: 'Years of Experience',
                  value: '03',
                ),
              ),
              Sizes.s32.spaceX,
              const Expanded(
                child: StatsCard(
                  title: 'Projects Done',
                  value: '30',
                ),
              ),
            ],
          ),
          Sizes.s64.spaceY,
          Row(
            children: [
              const Expanded(
                child: StatsCard(
                  title: 'Happy Customers',
                  value: '23',
                ),
              ),
              Sizes.s32.spaceX,
              const Expanded(
                child: StatsCard(
                  title: 'Award Wins',
                  value: '03',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
