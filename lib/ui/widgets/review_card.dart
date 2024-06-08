import 'package:flutter/material.dart';

import '../../core/extensions/theme_ext.dart';
import '../../entities/review_data.dart';
import '../../theme/sizes.dart';
import 'rating_bar.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.review,
  });

  final ReviewData review;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 400,
        height: 450,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width - Sizes.s64.value,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(review.imageUrl),
                    ),
                    Sizes.s16.spaceY,
                    Text(
                      review.username,
                      style: context.typography.labelSmall,
                    ),
                    Text.rich(
                      TextSpan(
                        text: '${review.position} at ',
                        children: [
                          TextSpan(
                            text: review.company,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Sizes.s10.spaceY,
                    RatingBar(
                      filled: review.rating,
                      maxCount: 5,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: Sizes.s24.pad,
                child: Text(
                  '"${review.text}"',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
