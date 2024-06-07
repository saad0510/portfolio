import 'package:flutter/material.dart';

import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/carousel_list.dart';
import 'base_section.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> with TickerProviderStateMixin {
  late final tabController = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Projects',
            textAlign: TextAlign.center,
            style: context.typography.displaySmall,
          ),
          Sizes.s32.spaceY,
          TabBar(
            isScrollable: true,
            controller: tabController,
            tabAlignment: TabAlignment.center,
            tabs: const [
              Text('All Works'),
              Text('Mobile Apps'),
              Text('Websites'),
              Text('Desktops'),
            ],
          ),
          Sizes.s32.spaceY,
          SizedBox(
            height: 400,
            child: TabBarView(
              controller: tabController,
              children: const [
                CarouselList(),
                CarouselList(),
                CarouselList(),
                CarouselList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
