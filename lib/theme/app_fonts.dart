import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_colors.dart';

// TODO: complete text theme with colors, weights

class AppFonts {
  static const fontFamily = 'Ubuntu';

  static const heading1 = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.w600,
    height: 90 / 72,
  );

  static const heading2 = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w600,
    height: 72 / 60,
  );

  static const heading3 = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w600,
    height: 48 / 60,
  );

  static const heading4 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    height: 44 / 36,
  );

  static const heading5 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    height: 38 / 30,
  );

  static const heading6 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32 / 24,
  );

  static const paragraph1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
  );

  static const paragraph2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 28 / 16,
  );

  static const text1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 30 / 20,
  );

  static const text2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 28 / 18,
  );

  static const small = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
  );

  static const tiny = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 18 / 12,
  );

  static final textTheme = const TextTheme(
    displayLarge: TextStyle(),
    displayMedium: TextStyle(),
    displaySmall: TextStyle(),
    headlineLarge: TextStyle(),
    headlineMedium: TextStyle(),
    headlineSmall: TextStyle(),
    titleLarge: TextStyle(),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(),
    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
    labelSmall: TextStyle(),
    bodyLarge: TextStyle(),
    bodyMedium: TextStyle(),
    bodySmall: TextStyle(),
  ).apply(
    fontFamily: fontFamily,
    bodyColor: AppColors.gray.shade600,
    displayColor: AppColors.gray.shade600,
  );
}
