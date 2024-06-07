import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/review_card.dart';
import 'base_section.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
            Constants.reviewsIntro,
            textAlign: TextAlign.center,
          ),
          Sizes.s16.spaceY,
          Sizes.s24.spaceY,
          SizedBox(
            height: 450,
            child: ListView.separated(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, i) => Sizes.s24.spaceX,
              itemBuilder: (_, i) => const ReviewCard(),
            ),
          ),
        ],
      ),
    );
  }
}
