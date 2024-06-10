import 'package:flutter/material.dart';

import '../../core/extensions/theme_ext.dart';
import '../../entities/project_type.dart';
import '../../theme/sizes.dart';
import '../widgets/projects_list.dart';
import 'base_section.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> with TickerProviderStateMixin {
  int selectedIndex = 0;

  final tabs = {
    'Mobile Apps': ProjectType.mobile,
    'Websites': ProjectType.web,
    'Desktops': ProjectType.desktop,
  };

  late final tabController = TabController(length: tabs.length, vsync: this);

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
            onTap: (i) => setState(() => selectedIndex = i),
            isScrollable: true,
            controller: tabController,
            tabAlignment: TabAlignment.center,
            tabs: [
              for (final label in tabs.keys) //
                Text(label),
            ],
          ),
          Sizes.s32.spaceY,
          ProjectsList(
            type: tabs.entries.toList()[selectedIndex].value,
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
