import 'package:flutter/material.dart';

import '../../core/assets/app_icon.dart';
import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/responsive_padding.dart';
import '../widgets/social_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final year = DateTime.now().year;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ResponsivePadding(
          vertical: Sizes.s16,
          child: Row(
            children: [
              const AppIcon(
                AppIcons.logo,
                size: 32,
              ),
              Sizes.s10.spaceX,
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SocialIconsRow(),
                ),
              ),
            ],
          ),
        ),
        const Divider(thickness: 0.1),
        ResponsivePadding(
          vertical: Sizes.s16,
          child: DefaultTextStyle(
            style: context.typography.bodySmall!,
            child: Row(
              children: [
                Text('©$year. All rights reserved.'),
                Sizes.s16.spaceX,
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const Text('Privacy Policy'),
                          Sizes.s16.spaceX,
                          const Text('Terms of Use'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
