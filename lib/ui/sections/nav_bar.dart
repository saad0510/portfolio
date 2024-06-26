import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../controllers/navigation_controller.dart';
import '../../entities/nav_items.dart';
import '../../providers/app_version_provider.dart';
import '../../providers/current_user_provider.dart';
import '../../theme/app_buttons_styles.dart';
import '../../theme/sizes.dart';
import '../widgets/responsive_padding.dart';

class NavBar extends ConsumerWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(appVersionProvider);

    final user = ref.watch(currentUserProvider);
    final selected = ref.watch(navigationProvider);

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: ColoredBox(
          color: Colors.white38,
          child: ResponsivePadding(
            vertical: Sizes.s0,
            child: Center(
              child: SizedBox(
                height: 40,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (ResponsiveBreakpoints.of(context).isMobile)
                      const Spacer()
                    else
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (final item in NavItems.values)
                                TextButton(
                                  style: item == selected ? null : AppButtonsStyles.secondaryTextButton,
                                  onPressed: () => ref.read(navigationProvider.notifier).setItem(item),
                                  child: Text('$item'),
                                ),
                            ],
                          ),
                        ),
                      ),
                    Sizes.s24.spaceX,
                    ElevatedButton(
                      style: AppButtonsStyles.secondaryElevatedButton,
                      onPressed: () => launchUrlString(user.links.meetingLink),
                      child: const Text('Let\'s talk'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 88);
}
