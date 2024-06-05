import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/responsive_ext.dart';
import '../../theme/sizes.dart';
import '../../wireframe/wireframe_card.dart';
import '../../wireframe/wireframe_text.dart';
import 'base_section.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = ResponsiveBreakpoints.of(context).map(
      mobile: 1,
      tablet: 2,
      desktop: 3,
      wideScreen: 4,
    );

    return BaseSection.alternate(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const WireframeText(),
          Sizes.s24.spaceY,
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 1,
              crossAxisSpacing: Sizes.s24.value,
              mainAxisSpacing: Sizes.s24.value,
            ),
            itemCount: 6,
            itemBuilder: (_, i) => const WireframeCard(),
          ),
        ],
      ),
    );
  }
}
