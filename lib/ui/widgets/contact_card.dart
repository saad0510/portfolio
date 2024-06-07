import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/sizes.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.value,
    required this.icon,
  });

  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.gray.shade500,
          size: 50,
        ),
        Sizes.s16.spaceY,
        Text(
          value,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
