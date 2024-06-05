import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../theme/sizes.dart';
import '../../wireframe/wireframe_button.dart';
import '../../wireframe/wireframe_image.dart';
import '../../wireframe/wireframe_text.dart';
import 'base_section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)) {
      return BaseSection(
        height: 1000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: WireframeImage(),
            ),
            Sizes.s32.spaceY,
            const Expanded(
              flex: 2,
              child: _WfAboutText(),
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
            child: WireframeImage(),
          ),
          Sizes.s32.spaceX,
          const Expanded(
            flex: 2,
            child: _WfAboutText(),
          ),
        ],
      ),
    );
  }
}

class _WfAboutText extends StatelessWidget {
  const _WfAboutText();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const WireframeText(),
        Sizes.s10.spaceY,
        const WireframeText(height: 120),
        Sizes.s24.spaceY,
        Row(
          children: [
            const WireframeButton(),
            Sizes.s10.spaceX,
            const WireframeButton(),
            Sizes.s10.spaceX,
            const WireframeButton(),
          ],
        ),
        Sizes.s24.spaceY,
        const Expanded(
          child: WireframeText(),
        ),
      ],
    );
  }
}
