import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../theme/sizes.dart';
import '../widgets/responsive_padding.dart';
import '../../wireframe/wireframe_card.dart';
import '../../wireframe/wireframe_text.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final isBreakPoint = ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE);

    return ColoredBox(
      color: Colors.grey.shade100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ResponsivePadding(
            vertical: Sizes.s16,
            child: isBreakPoint
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _WfLogo(),
                      Sizes.s10.spaceY,
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: _WfSocialIcons(),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      const _WfLogo(),
                      const Spacer(),
                      Sizes.s10.spaceX,
                      const _WfSocialIcons(),
                    ],
                  ),
          ),
          const Divider(thickness: 0.5),
          ResponsivePadding(
            vertical: Sizes.s16,
            child: SingleChildScrollView(
              scrollDirection: isBreakPoint ? Axis.horizontal : Axis.vertical,
              physics: isBreakPoint ? null : const NeverScrollableScrollPhysics(),
              child: Row(
                children: [
                  const WireframeText(width: 200),
                  if (!isBreakPoint) const Spacer(),
                  Sizes.s10.spaceX,
                  const WireframeText(),
                  Sizes.s10.spaceX,
                  const WireframeText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WfLogo extends StatelessWidget {
  const _WfLogo();

  @override
  Widget build(BuildContext context) {
    return const WireframeCard(
      width: 60,
      height: 40,
    );
  }
}

class _WfSocialIcons extends StatelessWidget {
  const _WfSocialIcons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const WireframeCard(width: 60, height: 40),
        Sizes.s10.spaceX,
        const WireframeCard(width: 60, height: 40),
        Sizes.s10.spaceX,
        const WireframeCard(width: 60, height: 40),
        Sizes.s10.spaceX,
        const WireframeCard(width: 60, height: 40),
      ],
    );
  }
}
