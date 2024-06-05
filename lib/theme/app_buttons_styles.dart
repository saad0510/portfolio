import 'package:flutter/material.dart';

import '../core/extensions/theme_ext.dart';
import 'app_colors.dart';
import 'app_fonts.dart';
import 'sizes.dart';

class AppButtonsStyles {
  static final primaryOverlay = AppColors.purple.shade200;
  static final secondaryForeground = AppColors.gray.shade600;
  static final secondaryOverlay = AppColors.gray.shade400;

  static final _textStyle = AppFonts.paragraph1.copyWith(
    leadingDistribution: TextLeadingDistribution.even,
  );

  // ElevatedButton:

  static ButtonStyle _baseStyles(ButtonStyle buttonStyle) {
    return buttonStyle.copyWith(
      elevation: const _Fixed(0),
      alignment: Alignment.center,
      padding: _Fixed(Sizes.s16.pad),
      textStyle: buttonStyle.textStyle ?? _Fixed(_textStyle),
      visualDensity: VisualDensity.compact,
      shadowColor: const _Fixed(Colors.transparent),
      shape: const _Fixed(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }

  static final elevatedButton = _baseStyles(
    ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      overlayColor: primaryOverlay,
      textStyle: _textStyle,
    ),
  );

  static final secondaryElevatedButton = _baseStyles(
    ElevatedButton.styleFrom(
      backgroundColor: AppColors.gray.shade100,
      foregroundColor: secondaryForeground,
      overlayColor: secondaryOverlay,
      textStyle: _textStyle,
    ),
  );

  // OutlinedButton:

  static final outlinedButton = _baseStyles(
    OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.primary,
      overlayColor: primaryOverlay,
      side: BorderSide(color: AppColors.primary),
    ),
  );

  static final secondaryOutlinedButton = _baseStyles(
    OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: secondaryForeground,
      overlayColor: secondaryOverlay,
      side: BorderSide(color: AppColors.gray.shade300),
    ),
  );

  // TextButton:

  static final textButton = _baseStyles(
    TextButton.styleFrom(
      textStyle: _textStyle.weighted(FontWeight.w500),
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.primary,
      overlayColor: primaryOverlay,
    ),
  );

  static final secondaryTextButton = _baseStyles(
    TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: secondaryForeground,
      overlayColor: secondaryOverlay,
    ),
  );
}

typedef _Fixed<T> = WidgetStatePropertyAll<T>;

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
