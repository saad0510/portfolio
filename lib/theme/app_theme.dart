import 'package:flutter/material.dart';

import 'app_buttons_styles.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: AppColors.colorScheme,
    iconTheme: iconTheme,
    textTheme: AppFonts.textTheme,
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
}
