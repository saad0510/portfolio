import 'package:flutter/material.dart';

import '../../theme/sizes.dart';
import '../../core/extensions/theme_ext.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: context.typography.headlineMedium.removeFont,
            ),
            Icon(
              icon,
              size: Sizes.s16.value,
            ),
          ],
        ),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
