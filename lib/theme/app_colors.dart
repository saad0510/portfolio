import 'package:flutter/material.dart';

import '../core/extensions/theme_ext.dart';

class AppColors {
  static final colorScheme = ColorScheme(
    brightness: Brightness.light,
    // primary
    primary: primary,
    onPrimary: white,
    primaryContainer: blue.shade25,
    onPrimaryContainer: gray.shade600,
    secondary: Colors.transparent,
    onSecondary: Colors.transparent,
    secondaryContainer: gray.shade100,
    // background
    surface: white,
    onSurface: gray.shade600,
    // errors
    error: red.shade600,
    onError: white,
    errorContainer: red.shade100,
    onErrorContainer: red.shade600,
  );

  static final primary = blue.shade600;
  static const white = Color(0xFFFFFFFF);

  static const gray = MaterialColor(
    0xFF94A3B8,
    {
      25: Color(0xFFFBFCFD),
      50: Color(0xFFF8FAFC),
      100: Color(0xFFF1F5F9),
      200: Color(0xFFE2E8F0),
      300: Color(0xFFCBD5E1),
      400: Color(0xFF94A3B8),
      500: Color(0xFF64748B),
      600: Color(0xFF475569),
      700: Color(0xFF334155),
      800: Color(0xFF1E293B),
      900: Color(0xFF0F172A),
    },
  );

  static const purple = MaterialColor(
    0xFF9863FF,
    {
      25: Color(0xFFF9F5FF),
      50: Color(0xFFF0E5FF),
      100: Color(0xFFE7D5FF),
      200: Color(0xFFCDABFF),
      300: Color(0xFFB182FF),
      400: Color(0xFF9863FF),
      500: Color(0xFF702FFF),
      600: Color(0xFF5622DB),
      700: Color(0xFF3F17B7),
      800: Color(0xFF2B0E93),
      900: Color(0xFF1D097A),
    },
  );

  static const green = MaterialColor(
    0xFF6CD562,
    {
      25: Color(0xFFF9FEF6),
      50: Color(0xFFECFCE3),
      100: Color(0xFFE3FBD7),
      200: Color(0xFFC3F8B0),
      300: Color(0xFF96EA85),
      400: Color(0xFF6CD562),
      500: Color(0xFF34BA34),
      600: Color(0xFF269F30),
      700: Color(0xFF1A852C),
      800: Color(0xFF106B28),
      900: Color(0xFF095925),
    },
  );

  static const blue = MaterialColor(
    0xFF49D2FB,
    {
      25: Color(0xFFF5FFFF),
      50: Color(0xFFE1FEFE),
      100: Color(0xFFCEFDFE),
      200: Color(0xFF9EF5FE),
      300: Color(0xFF6DE5FD),
      400: Color(0xFF49D2FB),
      500: Color(0xFF0EB3F9),
      600: Color(0xFF0A8BD6),
      700: Color(0xFF0768B3),
      800: Color(0xFF044A90),
      900: Color(0xFF023577),
    },
  );
  static const yellow = MaterialColor(
    0xFFF1EE4F,
    {
      25: Color(0xFFFFFFF5),
      50: Color(0xFFFEFEE2),
      100: Color(0xFFFDFDD0),
      200: Color(0xFFFCFBA2),
      300: Color(0xFFF8F673),
      400: Color(0xFFF1EE4F),
      500: Color(0xFFE8E419),
      600: Color(0xFFC7C312),
      700: Color(0xFFC7C312),
      800: Color(0xFF868307),
      900: Color(0xFF6F6C04),
    },
  );

  static const red = MaterialColor(
    0xFFFF7D67,
    {
      25: Color(0xFFFFF9F5),
      50: Color(0xFFFFEFE5),
      100: Color(0xFFFFE6D6),
      200: Color(0xFFFFC7AE),
      300: Color(0xFFFFA185),
      400: Color(0xFFFF7D67),
      500: Color(0xFFFF4235),
      600: Color(0xFFDB262A),
      700: Color(0xFFB71A2A),
      800: Color(0xFF931029),
      900: Color(0xFF7A0A28),
    },
  );
}
