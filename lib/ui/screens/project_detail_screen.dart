import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/entites_provider.dart';
import '../../core/extensions/theme_ext.dart';
import '../../entities/project_data.dart';
import '../../theme/sizes.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final project = context.select<EntitesProvider, ProjectData?>((v) => v.selectedProject)!;

    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: SingleChildScrollView(
        padding: Sizes.s24.pad,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              project.title,
              style: context.typography.headlineMedium,
            ),
            Sizes.s10.spaceY,
            Text(
              project.description,
            ),
            Sizes.s32.spaceY,
            Wrap(
              spacing: Sizes.s16.value,
              runSpacing: Sizes.s16.value,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                for (final image in project.images) //
                  Image.asset(
                    image,
                    width: project.type.width,
                    height: project.type.height,
                    alignment: project.type.imageAlignment,
                    fit: BoxFit.fitHeight,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


//  Sizes.s10.spaceY,
//           ActionChip(
//             onPressed: () {},
//             avatar: const AppIcon(AppIcons.github),
//             label: const Text('Github'),
//           ),
//           Sizes.s10.spaceY,
//           ActionChip(
//             onPressed: () {},
//             avatar: const Icon(Icons.web),
//             label: const Text('Website'),
//           ),
//           Sizes.s10.spaceY,
//           ActionChip(
//             onPressed: () {},
//             avatar: const Icon(Icons.play_arrow_rounded),
//             label: const Text('Play Store'),
//           ),
//           Sizes.s10.spaceY,
//           ActionChip(
//             onPressed: () {},
//             avatar: const Icon(Icons.apple),
//             label: const Text('Apple Store'),
//           ),
//           Sizes.s10.spaceY,
//           ActionChip(
//             onPressed: () {},
//             avatar: const Icon(Icons.android),
//             label: const Text('.apk'),
//           ),