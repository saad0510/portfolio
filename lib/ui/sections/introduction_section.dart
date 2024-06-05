import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/app_assets.dart';
import '../../core/constants.dart';
import '../../core/extensions/theme_ext.dart';
import '../../core/utils/semi_circle_clipper.dart';
import '../../theme/sizes.dart';
import 'base_section.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo('SEMI_DESKTOP')) {
      return BaseSection(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const IntroductionText(isBreakPoint: true),
            Sizes.s64.spaceY,
            const ClipPath(
              clipper: SemiCircleClipper(curveFactor: 2),
              child: IntroductionImage(isBreakPoint: true),
            ),
          ],
        ),
      );
    }

    return BaseSection(
      height: 700,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: IntroductionText(isBreakPoint: false),
          ),
          Sizes.s100.spaceX,
          const SizedBox(
            width: 350,
            child: ClipPath(
              clipper: SemiCircleClipper(curveFactor: 1.7),
              child: IntroductionImage(),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroductionText extends StatelessWidget {
  const IntroductionText({
    super.key,
    this.isBreakPoint = false,
  });

  final bool isBreakPoint;

  @override
  Widget build(BuildContext context) {
    final textAlign = isBreakPoint ? TextAlign.center : TextAlign.left;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          Constants.personalName.toUpperCase(),
          textAlign: textAlign,
          style: context.typography.labelSmall?.copyWith(
            color: context.colors.primary,
            letterSpacing: 2,
            fontWeight: FontWeight.w500,
          ),
        ),
        Sizes.s16.spaceY,
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: 'Full Stack\n',
              ),
              TextSpan(
                text: 'Flutter App',
                style: TextStyle(color: context.colors.primary),
              ),
              const TextSpan(
                text: ' Developer',
              ),
            ],
          ),
          style: context.typography.displaySmall,
          textAlign: textAlign,
        ),
        Sizes.s24.spaceY,
        Sizes.s32.spaceY,
        Align(
          alignment: isBreakPoint ? Alignment.center : Alignment.centerLeft,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Let\'s Work Together'),
          ),
        ),
      ],
    );
  }
}

class IntroductionImage extends StatelessWidget {
  const IntroductionImage({
    super.key,
    this.isBreakPoint = false,
  });

  final bool isBreakPoint;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.me,
      width: double.infinity,
      height: isBreakPoint ? null : double.infinity,
      fit: isBreakPoint ? BoxFit.fitWidth : BoxFit.fitHeight,
      alignment: Alignment.topCenter,
      cacheHeight: 1080,
    );
  }
}
