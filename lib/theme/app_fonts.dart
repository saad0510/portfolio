import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppFonts {
  static const fontFamily = 'Ubuntu';

  static const heading1 = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.w600,
    height: 90 / 72,
    fontFamily: fontFamily,
  );

  static const heading2 = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w600,
    height: 72 / 60,
    fontFamily: fontFamily,
  );

  static const heading3 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w600,
    height: 60 / 48,
    fontFamily: fontFamily,
  );

  static const heading4 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    height: 44 / 36,
    fontFamily: fontFamily,
  );

  static const heading5 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    height: 38 / 30,
    fontFamily: fontFamily,
  );

  static const heading6 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32 / 24,
    fontFamily: fontFamily,
  );

  static const paragraph1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
    fontFamily: fontFamily,
  );

  static const paragraph2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 28 / 16,
    fontFamily: fontFamily,
  );

  static const text1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 30 / 20,
    fontFamily: fontFamily,
  );

  static const text2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 28 / 18,
    fontFamily: fontFamily,
  );

  static const small = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    fontFamily: fontFamily,
  );

  static const tiny = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 18 / 12,
    fontFamily: fontFamily,
  );

  static final textTheme = const TextTheme(
    displayLarge: TextStyle(),
    displayMedium: TextStyle(),
    displaySmall: heading3,
    headlineLarge: heading4,
    headlineMedium: heading6,
    headlineSmall: TextStyle(),
    titleLarge: TextStyle(),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(),
    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
    labelSmall: text2,
    bodyLarge: TextStyle(),
    bodyMedium: paragraph1,
    bodySmall: tiny,
  ).apply(
    fontFamily: fontFamily,
    bodyColor: AppColors.gray.shade600,
    displayColor: AppColors.gray.shade800,
  );
}
