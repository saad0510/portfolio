import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/theme_ext.dart';
import '../../providers/current_user_provider.dart';
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
          Consumer(
            builder: (context, ref, child) {
              final user = ref.watch(currentUserProvider);
              if (user.images.length < 2) return const SizedBox.shrink();

              return ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.network(
                  user.images[1],
                  height: double.infinity,
                  width: 300,
                  cacheHeight: 1080,
                  alignment: Alignment.topLeft,
                  fit: BoxFit.fitWidth,
                ),
              );
            },
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

class AboutText extends ConsumerStatefulWidget {
  const AboutText({
    super.key,
    this.isSmallScreen = false,
  });

  final bool isSmallScreen;

  @override
  ConsumerState<AboutText> createState() => _AboutTextState();
}

class _AboutTextState extends ConsumerState<AboutText> with TickerProviderStateMixin {
  late final tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(currentUserProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'About',
          textAlign: widget.isSmallScreen ? TextAlign.center : TextAlign.left,
          style: context.typography.headlineLarge,
        ),
        Sizes.s16.spaceY,
        Text(
          user.about,
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
