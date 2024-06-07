import 'package:flutter/material.dart';

import '../../core/assets/app_icon.dart';
import '../../theme/app_colors.dart';
import '../../theme/sizes.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.value,
    required this.icon,
  });

  final String value;
  final AppIcons icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppIcon(
          icon,
          color: AppColors.gray.shade500,
          size: 40,
        ),
        Sizes.s24.spaceY,
        Text(
          value,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
