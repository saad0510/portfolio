import 'package:flutter/material.dart';

import '../core/extensions/theme_ext.dart';
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
    cardTheme: cardTheme,
    inputDecorationTheme: inputFieldTheme,
    iconButtonTheme: IconButtonThemeData(
      style: AppButtonsStyles.iconButton,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonsStyles.elevatedButton,
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

  static final cardTheme = CardTheme(
    elevation: 0,
    color: AppColors.gray.shade100,
    margin: EdgeInsets.zero,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  static final inputFieldTheme = InputDecorationTheme(
    filled: false,
    alignLabelWithHint: true,
    contentPadding: Sizes.s16.pad,
    hintStyle: AppFonts.paragraph1.colored(AppColors.gray.shade400),
    labelStyle: AppFonts.paragraph1.colored(AppColors.gray.shade600),
    border: inputFieldBorder(),
    enabledBorder: inputFieldBorder(),
    disabledBorder: inputFieldBorder(),
    focusedBorder: inputFieldBorder(color: AppColors.primary),
    errorBorder: inputFieldBorder(color: AppColors.red.shade600),
    focusedErrorBorder: inputFieldBorder(color: AppColors.red.shade600),
  );

  static InputBorder inputFieldBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? AppColors.gray.shade200),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    );
  }
}
