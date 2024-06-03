import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/navigation_controller.dart';
import '../../entities/nav_items.dart';
import '../../theme/app_buttons_styles.dart';
import '../../theme/sizes.dart';

class AppNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<NavigationController>();

    bool isSelected(NavItems item) {
      return item == controller.selected;
    }

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: Colors.white38,
          height: double.infinity,
          alignment: Alignment.center,
          padding: Sizes.s120.padX,
          child: Row(
            children: [
              for (final item in NavItems.values)
                TextButton(
                  style: isSelected(item) ? null : AppButtonsStyles.secondaryTextButton,
                  onPressed: () => controller.setItem(item),
                  child: Text('$item'),
                ),
              const Spacer(),
              ElevatedButton(
                style: AppButtonsStyles.secondaryElevatedButton,
                onPressed: () {},
                child: const Text('Let\'s talk'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 88);
}
