import 'package:flutter/material.dart';

import '../widgets/responsive_padding.dart';

class BaseSection extends StatelessWidget {
  const BaseSection({
    super.key,
    this.height,
    this.color = Colors.white,
    required this.child,
  });

  BaseSection.alternate({
    super.key,
    this.height,
    required this.child,
  }) : color = Colors.grey.shade100;

  final double? height;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: color,
      child: ResponsivePadding(
        child: child,
      ),
    );
  }
}
