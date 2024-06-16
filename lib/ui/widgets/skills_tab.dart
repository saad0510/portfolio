import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/skills_provider.dart';
import '../../theme/sizes.dart';

class SkillsTab extends ConsumerWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skills = ref.watch(skillsProvider).valueOrNull ?? const [];

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
