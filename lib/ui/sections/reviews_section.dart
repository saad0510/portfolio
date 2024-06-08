import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/data_provider.dart';
import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/review_card.dart';
import 'base_section.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final reviews = context.watch<DataProvider>().reviews;

    final reviewCards = [
      for (final review in reviews) ...[
        ReviewCard(review: review),
        Sizes.s24.spaceX,
      ]
    ];

    if (reviewCards.isNotEmpty) reviewCards.removeLast();

    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'What Clients Say',
            textAlign: TextAlign.center,
            style: context.typography.displaySmall,
          ),
          Sizes.s16.spaceY,
          const Text(
            'We highly recommend them for any business looking to improve their online presence.',
            textAlign: TextAlign.center,
          ),
          Sizes.s16.spaceY,
          Sizes.s24.spaceY,
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: reviewCards,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
