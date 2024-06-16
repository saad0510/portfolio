import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/assets/app_icon.dart';
import '../../core/extensions/theme_ext.dart';
import '../../providers/current_user_provider.dart';
import '../../theme/app_colors.dart';
import '../../theme/sizes.dart';

class SocialIconsRow extends ConsumerWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const InitialsIcon(),
          Sizes.s10.spaceX,
          SocialIcon(
            appIcon: AppIcons.linkedin,
            link: user.links.linkedinLink,
          ),
          Sizes.s10.spaceX,
          SocialIcon(
            appIcon: AppIcons.github,
            link: user.links.githubLink,
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
    required this.link,
  });

  final AppIcons appIcon;
  final String link;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => launchUrlString(link),
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
