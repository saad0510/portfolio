import 'package:flutter/material.dart';

class SemiCircleClipper extends CustomClipper<Path> {
  final double curveFactor;

  const SemiCircleClipper({
    this.curveFactor = 2,
  });

  @override
  Path getClip(Size size) {
    final path = Path();
    final curvePoint = size.height / curveFactor;

    path.moveTo(0, 0);
    path.lineTo(0, curvePoint);
    path.arcToPoint(
      Offset(size.width, curvePoint),
      radius: Radius.circular(size.width / 2),
      clockwise: false,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
