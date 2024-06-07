import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://picsum.photos/200/300?seed=${DateTime.now().microsecondsSinceEpoch}';

    return Container(
      height: double.infinity,
      width: 250,
      decoration: BoxDecoration(
        color: AppColors.gray.shade400,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
