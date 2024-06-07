import 'package:flutter/material.dart';

import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import 'rating_bar.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 400,
        height: double.infinity,
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
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://picsum.photos/id/1005/200/300'),
                    ),
                    Sizes.s16.spaceY,
                    Text(
                      'Usman Majeed',
                      style: context.typography.labelSmall,
                    ),
                    const Text.rich(
                      TextSpan(
                        text: 'Founder at ',
                        children: [
                          TextSpan(
                            text: 'Izdiwaj',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Sizes.s10.spaceY,
                    const RatingBar(
                      filled: 3,
                      maxCount: 5,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: Sizes.s24.pad,
                child: const Text(
                  '"Saad exceeded my expectations by developing a fantastic matchmaking app, Izdiwaj, in Flutter. His expertise, dedication, and timely delivery were exceptional. Communication was seamless, and he addressed all requirements perfectly. Highly recommend Saad for any app development project. A true professional!"',
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
