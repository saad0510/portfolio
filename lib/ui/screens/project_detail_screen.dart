import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/responsive_ext.dart';
import '../../core/extensions/theme_ext.dart';
import '../../providers/selected_project_provider.dart';
import '../../theme/sizes.dart';

class ProjectDetailScreen extends ConsumerWidget {
  const ProjectDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final project = ref.watch(selectedProjectProvider);

    if (project == null) return const SizedBox.shrink();

    final widthFactor = ResponsiveBreakpoints.of(context).map(
      mobile: 0.9,
      tablet: 0.7,
      desktop: 0.5,
      wideScreen: 0.5,
    );

    return Drawer(
      width: MediaQuery.sizeOf(context).width * widthFactor,
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
              spacing: Sizes.s24.value,
              runSpacing: Sizes.s24.value,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                for (final image in project.images) //
                  Card(
                    elevation: 1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Image.network(
                        image,
                        width: project.type.width(compact: true),
                        height: project.type.height(compact: true),
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth,
                      ),
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