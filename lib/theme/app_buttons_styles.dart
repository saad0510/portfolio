import 'package:flutter/material.dart';

import '../core/extensions/theme_ext.dart';
import 'app_colors.dart';
import 'app_fonts.dart';
import 'sizes.dart';

class AppButtonsStyles {
  static final primaryOverlay = AppColors.purple.shade200;
  static final secondaryForeground = AppColors.gray.shade600;
  static final secondaryBackground = AppColors.gray.shade100;
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
      backgroundColor: secondaryBackground,
      foregroundColor: secondaryForeground,
      overlayColor: secondaryOverlay,
      textStyle: _textStyle,
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

  // IconButton:

  static final iconButton = ButtonStyle(
    elevation: const _Fixed(0),
    padding: const _Fixed(EdgeInsets.zero),
    visualDensity: VisualDensity.comfortable,
    alignment: Alignment.center,
    iconSize: const _Fixed(24),
    fixedSize: const _Fixed(Size(35, 35)),
    backgroundColor: _Fixed(secondaryBackground),
    foregroundColor: _Fixed(secondaryForeground),
    shadowColor: const _Fixed(Colors.transparent),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shape: const _Fixed(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );
}

typedef _Fixed<T> = WidgetStatePropertyAll<T>;
