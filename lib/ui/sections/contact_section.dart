import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/responsive_ext.dart';
import '../../theme/sizes.dart';
import '../../wireframe/wireframe_button.dart';
import '../../wireframe/wireframe_card.dart';
import '../../wireframe/wireframe_text.dart';
import '../../wireframe/wireframe_text_field.dart';
import 'base_section.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)) {
      return BaseSection(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const WireframeText(height: 100),
            Sizes.s64.spaceY,
            const _WfContactForm(),
            Sizes.s64.spaceY,
            const _WfContactInfoCards(),
          ],
        ),
      );
    }

    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const WireframeText(height: 100),
          Sizes.s64.spaceY,
          Row(
            children: [
              const Expanded(
                child: _WfContactForm(),
              ),
              Sizes.s100.spaceX,
              const Expanded(
                child: _WfContactInfoCards(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _WfContactForm extends StatelessWidget {
  const _WfContactForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const WireframeTextField(),
        Sizes.s16.spaceY,
        const WireframeTextField(),
        Sizes.s16.spaceY,
        const WireframeTextField(),
        Sizes.s16.spaceY,
        const WireframeTextField(),
        Sizes.s16.spaceY,
        const WireframeTextField(),
        Sizes.s16.spaceY,
        const WireframeTextField(),
        Sizes.s16.spaceY,
        const Row(
          children: [
            Spacer(),
            WireframeButton(),
          ],
        ),
      ],
    );
  }
}

class _WfContactInfoCards extends StatelessWidget {
  const _WfContactInfoCards();

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = ResponsiveBreakpoints.of(context).map(
      mobile: 1,
      tablet: 2,
      desktop: 2,
      wideScreen: 2,
    );

    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: Sizes.s24.value,
        mainAxisSpacing: Sizes.s24.value,
        mainAxisExtent: 170,
      ),
      itemCount: 4,
      itemBuilder: (_, i) => const _WfContactCard(),
    );
  }
}

class _WfContactCard extends StatelessWidget {
  const _WfContactCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: WireframeCard(),
        ),
        Sizes.s10.spaceY,
        const WireframeText(),
      ],
    );
  }
}
