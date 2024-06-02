import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/navigation_controller.dart';
import '../../../entities/nav_items.dart';
import '../../../theme/app_theme.dart';
import '../../../theme/sizes.dart';
import '../../extensions/theme_ext.dart';

class AppNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<NavigationController>();
    final activeItem = controller.selected;

    return Container(
      color: context.backgroundColor,
      height: double.infinity,
      alignment: Alignment.center,
      padding: Sizes.s120.padX,
      child: Row(
        children: [
          for (final item in NavItems.values)
            TextButton(
              style: activeItem == item ? null : AppTheme.secondaryTextButton.style,
              onPressed: () => controller.setItem(item),
              child: Text('$item'),
            ),
          const Spacer(),
          ElevatedButton(
            style: AppTheme.secondaryElevatedButton.style,
            onPressed: () {},
            child: const Text('Let\'s talk'),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 88);
}
