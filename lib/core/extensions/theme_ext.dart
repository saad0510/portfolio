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

extension TextStylesExt on TextStyle? {
  TextStyle? get primary => this?.copyWith(color: AppColors.primary);

  TextStyle? get medium => this?.copyWith(fontWeight: FontWeight.w500);
}
