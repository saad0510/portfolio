import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/responsive_ext.dart';
import '../../theme/sizes.dart';

class ResponsivePadding extends StatelessWidget {
  const ResponsivePadding({
    super.key,
    this.horizontal,
    this.vertical,
    required this.child,
  });

  final Sizes? horizontal;
  final Sizes? vertical;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final padding = ResponsiveBreakpoints.of(context).map(
      mobile: Sizes.s32,
      tablet: Sizes.s64,
      desktop: Sizes.s100,
      wideScreen: Sizes.s120,
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal?.value ?? padding.value,
        vertical: vertical?.value ?? padding.value,
      ),
      child: child,
    );
  }
}
