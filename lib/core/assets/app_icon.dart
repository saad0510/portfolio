import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_icons.dart';

export 'app_icons.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.appIcon, {
    super.key,
    this.size,
    this.color,
  }) : path = null;

  const AppIcon.raw(
    this.path, {
    super.key,
    this.size,
    this.color,
  }) : appIcon = AppIcons.none;

  final AppIcons appIcon;
  final String? path;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path ?? appIcon.path,
      width: size,
      height: size,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            ),
    );
  }
}
