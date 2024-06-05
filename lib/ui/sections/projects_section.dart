import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/responsive_ext.dart';
import '../../theme/sizes.dart';
import '../../wireframe/wireframe_button.dart';
import '../../wireframe/wireframe_card.dart';
import '../../wireframe/wireframe_text.dart';
import 'base_section.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const WireframeText(),
          Sizes.s32.spaceY,
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const WireframeButton(),
                  Sizes.s10.spaceX,
                  const WireframeButton(),
                  Sizes.s10.spaceX,
                  const WireframeButton(),
                  Sizes.s10.spaceX,
                  const WireframeButton(),
                ],
              ),
            ),
          ),
          Sizes.s32.spaceY,
          const _WfProjectsLayout(),
          Sizes.s32.spaceY,
          const Row(
            children: [
              Spacer(),
              WireframeButton(),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

class _WfProjectsLayout extends StatelessWidget {
  const _WfProjectsLayout();

  @override
  Widget build(BuildContext context) {
    final responsiveness = ResponsiveBreakpoints.of(context);

    if (responsiveness.smallerOrEqualTo(TABLET)) {
      final crossAxisCount = responsiveness.map(
        mobile: 1,
        tablet: 2,
        desktop: 3,
        wideScreen: 4,
      );

      return GridView.builder(
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
      );
    }

    return SizedBox(
      height: 624,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  flex: 2,
                  child: WireframeCard(),
                ),
                Sizes.s24.spaceX,
                const Expanded(
                  child: WireframeCard(),
                ),
              ],
            ),
          ),
          Sizes.s24.spaceY,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  child: WireframeCard(),
                ),
                Sizes.s24.spaceX,
                const Expanded(
                  flex: 2,
                  child: WireframeCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
