import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/extensions/theme_ext.dart';
import '../../entities/project_type.dart';
import '../../providers/selected_project_provider.dart';
import '../../theme/sizes.dart';

class ProjectDetailScreen extends ConsumerWidget {
  const ProjectDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final project = ref.watch(selectedProjectProvider);

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
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Image.network(
                      image,
                      width: project.type == ProjectType.mobile ? 250 : double.infinity,
                      height: project.type == ProjectType.mobile ? 500 : null,
                      alignment: project.type.imageAlignment,
                      fit: project.type.fit,
                    ),
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