import 'package:flutter/material.dart';

import 'app_buttons_styles.dart';
import 'app_colors.dart';
import 'app_fonts.dart';
import 'sizes.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: AppColors.colorScheme,
    iconTheme: iconTheme,
    textTheme: AppFonts.textTheme,
    tabBarTheme: tabBarTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonsStyles.elevatedButton,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: AppButtonsStyles.outlinedButton,
    ),
    textButtonTheme: TextButtonThemeData(
      style: AppButtonsStyles.textButton,
    ),
  );

  static final iconTheme = IconThemeData(
    color: AppColors.gray.shade800,
  );

  static final tabBarTheme = TabBarTheme(
    dividerHeight: 0,
    labelPadding: Sizes.padXY(x: Sizes.s16, y: Sizes.s10),
    indicatorSize: TabBarIndicatorSize.label,
    labelStyle: AppFonts.text2,
    labelColor: AppColors.primary,
    unselectedLabelStyle: AppFonts.text2,
    unselectedLabelColor: AppColors.gray.shade600,
  );
}
