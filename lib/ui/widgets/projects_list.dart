import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/data_provider.dart';
import '../../entities/project_type.dart';
import '../../theme/sizes.dart';
import 'project_card.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({
    super.key,
    required this.type,
  });

  final ProjectType type;

  @override
  Widget build(BuildContext context) {
    final projects = context.watch<DataProvider>().projects.where((p) => type == p.type).toList();

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
          ProjectCard(
            key: ValueKey(project.id),
            project: project,
          ),
      ],
    );
  }
}
