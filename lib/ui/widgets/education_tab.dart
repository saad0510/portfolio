import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/data_provider.dart';
import '../../theme/sizes.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});

  @override
  Widget build(BuildContext context) {
    final educations = context.watch<DataProvider>().educations;

    final educationCards = [
      for (final education in educations) ...[
        Text(
          education.degree,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        Sizes.s10.spaceY,
        Text(
          education.institute,
        ),
        Text(
          education.score,
        ),
        Sizes.s24.spaceY,
      ],
    ];

    if (educationCards.isNotEmpty) educationCards.removeLast();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: educationCards,
      ),
    );
  }
}
