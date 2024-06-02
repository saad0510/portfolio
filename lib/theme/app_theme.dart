import 'package:flutter/material.dart';

import '../core/extensions/theme_ext.dart';
import 'app_colors.dart';
import 'app_fonts.dart';
import 'sizes.dart';

typedef _Fixed<T> = WidgetStatePropertyAll<T>;

class AppTheme {
  static final theme = ThemeData(
    colorScheme: AppColors.colorScheme,
    textTheme: AppFonts.textTheme,
    elevatedButtonTheme: elevatedButton,
    textButtonTheme: textButton,
  );

  static final elevatedButton = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: const _Fixed(0),
      alignment: Alignment.center,
      padding: _Fixed(Sizes.s18.pad),
      visualDensity: VisualDensity.compact,
      backgroundColor: _Fixed(AppColors.primary),
      foregroundColor: const _Fixed(AppColors.white),
      overlayColor: _Fixed(AppColors.purple.shade600),
      shape: const _Fixed(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    ),
  );

  static final textButton = TextButtonThemeData(
    style: ButtonStyle(
      elevation: const _Fixed(0),
      alignment: Alignment.center,
      padding: _Fixed(Sizes.s12.pad),
      visualDensity: VisualDensity.compact,
      foregroundColor: _Fixed(AppColors.primary),
      overlayColor: _Fixed(AppColors.purple.shade100),
      textStyle: _Fixed(AppFonts.paragraph1.medium),
      shape: const _Fixed(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
    ),
  );

  // Auxilaries

  static final secondaryTextButton = TextButtonThemeData(
    style: textButton.style?.copyWith(
      foregroundColor: _Fixed(AppColors.gray.shade600),
      textStyle: const _Fixed(AppFonts.paragraph1),
      overlayColor: _Fixed(AppColors.gray.shade100),
    ),
  );

  static final secondaryElevatedButton = ElevatedButtonThemeData(
    style: elevatedButton.style?.copyWith(
      backgroundColor: _Fixed(AppColors.gray.shade100),
      foregroundColor: _Fixed(AppColors.gray.shade600),
      overlayColor: _Fixed(AppColors.gray.shade200),
    ),
  );
}

// ignore: non_constant_identifier_names
WidgetStateProperty<T> _Stateful<T>({
  T? hovered,
  required T fallback,
}) {
  return WidgetStateProperty.resolveWith(
    (states) {
      if (hovered != null && states.contains(WidgetState.hovered)) return hovered;
      return fallback;
    },
  );
}
