import 'package:flutter/material.dart';

import '../../theme/sizes.dart';
import '../../wireframe/wireframe_card.dart';
import '../../wireframe/wireframe_text.dart';
import 'base_section.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseSection.alternate(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const WireframeText(),
          Sizes.s32.spaceY,
          SizedBox(
            height: 300,
            child: ListView.separated(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, i) => Sizes.s24.spaceX,
              itemBuilder: (_, i) => const WireframeCard(width: 300),
            ),
          ),
        ],
      ),
    );
  }
}
