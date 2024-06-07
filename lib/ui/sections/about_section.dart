import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/assets/app_images.dart';
import '../../core/constants.dart';
import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/education_tab.dart';
import '../widgets/experience_tab.dart';
import '../widgets/skills_tab.dart';
import 'base_section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET))
      return const BaseSection(
        height: 850,
        child: AboutText(
          isSmallScreen: true,
        ),
      );

    return BaseSection(
      height: 800,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              AppImages.mobile_development.fullPath,
              height: double.infinity,
              width: 350,
              alignment: Alignment.topLeft,
              fit: BoxFit.fitWidth,
            ),
          ),
          Sizes.s64.spaceX,
          const Expanded(
            flex: 2,
            child: AboutText(),
          ),
        ],
      ),
    );
  }
}

class AboutText extends StatefulWidget {
  const AboutText({
    super.key,
    this.isSmallScreen = false,
  });

  final bool isSmallScreen;

  @override
  State<AboutText> createState() => _AboutTextState();
}

class _AboutTextState extends State<AboutText> with TickerProviderStateMixin {
  late final tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'About',
          textAlign: widget.isSmallScreen ? TextAlign.center : TextAlign.left,
          style: context.typography.displaySmall,
        ),
        Sizes.s16.spaceY,
        Text(
          Constants.bio,
          textAlign: widget.isSmallScreen ? TextAlign.center : TextAlign.left,
        ),
        Sizes.s24.spaceY,
        TabBar(
          controller: tabController,
          isScrollable: true,
          tabAlignment: widget.isSmallScreen ? TabAlignment.center : TabAlignment.start,
          tabs: const [
            Text('Skills'),
            Text('Experience'),
            Text('Education'),
          ],
        ),
        Sizes.s24.spaceY,
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              SkillsTab(),
              ExperienceTab(),
              EducationTab(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
