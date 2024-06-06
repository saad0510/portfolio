import 'package:flutter/material.dart';

import '../../core/extensions/theme_ext.dart';
import '../../theme/app_colors.dart';
import '../../theme/sizes.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.selected = false,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: selected ? context.colors.primaryContainer : null,
      child: Container(
        width: 300,
        height: 220,
        padding: Sizes.padXY(x: Sizes.s24, y: Sizes.s32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              icon,
              size: Sizes.s32.value,
              color: selected ? context.colors.primary : AppColors.gray.shade500,
            ),
            Sizes.s24.spaceY,
            Text(
              title,
              textAlign: TextAlign.center,
              style: context.typography.labelSmall?.copyWith(
                color: AppColors.gray.shade800,
              ),
            ),
            Sizes.s16.spaceY,
            Expanded(
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
