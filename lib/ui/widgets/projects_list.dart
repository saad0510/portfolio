import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../entities/project_type.dart';
import '../../providers/projects_provider.dart';
import '../../providers/selected_project_provider.dart';
import '../../theme/sizes.dart';
import 'project_card.dart';

class ProjectsList extends ConsumerWidget {
  const ProjectsList({
    super.key,
    required this.type,
  });

  final ProjectType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var projects = ref.watch(projectsProvider).valueOrNull ?? const [];
    projects = projects.where((p) => p.type == type).toList();

    if (projects.isEmpty)
      return const Center(
        heightFactor: 3,
        child: Text('No projects here'),
      );

    return Wrap(
      spacing: Sizes.s16.value,
      runSpacing: Sizes.s16.value,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        for (final project in projects) //
          ProviderScope(
            overrides: [
              selectedProjectProvider,
            ],
            child: ProjectCard(
              key: ValueKey(project.id),
              project: project,
              onTap: () {
                ref.read(selectedProjectProvider.notifier).state = project;
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
      ],
    );
  }
}
