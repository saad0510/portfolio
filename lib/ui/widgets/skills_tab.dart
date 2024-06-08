import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/data_provider.dart';
import '../../theme/sizes.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = context.watch<DataProvider>().skills;

    final skillCards = [
      for (final skill in skills) ...[
        Text(
          skill.title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        Sizes.s10.spaceY,
        Text(skill.description),
        Sizes.s16.spaceY,
      ],
    ];

    if (skillCards.isNotEmpty) skillCards.removeLast();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: skillCards,
      ),
    );
  }
}
