import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/extensions/theme_ext.dart';
import '../../providers/reviews_provider.dart';
import '../../theme/sizes.dart';
import '../widgets/review_card.dart';
import 'base_section.dart';

class ReviewsSection extends ConsumerWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(reviewsProvider).valueOrNull ?? const [];

    final reviewCards = [
      for (final review in reviews) ...[
        ReviewCard(
          key: ValueKey(review.id),
          review: review,
        ),
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
            style: context.typography.headlineLarge,
          ),
          Sizes.s16.spaceY,
          const Text(
            'I highly recommend them for any business looking to improve their online presence',
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
