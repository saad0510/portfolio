import 'package:flutter/material.dart';

import '../../core/assets/app_icon.dart';
import '../../core/extensions/theme_ext.dart';
import '../../theme/app_colors.dart';
import '../../theme/sizes.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const InitialsIcon(),
          Sizes.s10.spaceX,
          const SocialIcon(
            appIcon: AppIcons.linkedin,
          ),
          Sizes.s10.spaceX,
          const SocialIcon(
            appIcon: AppIcons.github,
          ),
        ],
      ),
    );
  }
}

class InitialsIcon extends StatelessWidget {
  const InitialsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return IconButton.filled(
      onPressed: () {},
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
      ),
      icon: Text(
        'SBK',
        style: context.typography.bodySmall.colored(colors.onPrimary),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.appIcon,
  });

  final AppIcons appIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
      ),
      icon: AppIcon(
        appIcon,
        size: 20,
        color: AppColors.gray.shade500,
      ),
    );
  }
}
