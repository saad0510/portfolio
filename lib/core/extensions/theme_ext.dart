import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

extension ShadesExt on ColorSwatch {
  Color get shade25 => this[25]!;

  Color get shade50 => this[50]!;
}

extension ContextAccessExt on BuildContext {
  Color get backgroundColor => Theme.of(this).scaffoldBackgroundColor;

  ColorScheme get colors => Theme.of(this).colorScheme;

  TextTheme get typography => Theme.of(this).textTheme;
}

extension TextColorsExt on TextStyle? {
  TextStyle? get primary => colored(AppColors.primary);

  TextStyle? colored(Color color) => this?.copyWith(color: color);
}

extension TextWeightsExt on TextStyle? {
  TextStyle? get medium => weighted(FontWeight.w500);

  TextStyle? weighted(FontWeight fontWeight) => this?.copyWith(fontWeight: fontWeight);
}

extension TypographyExt on TextStyle? {
  TextStyle? get removeFont => this?.copyWith(fontFamily: '');
}
