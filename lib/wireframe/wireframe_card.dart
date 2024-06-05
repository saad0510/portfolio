import 'package:flutter/material.dart';

class WireframeCard extends StatelessWidget {
  const WireframeCard({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.orange.shade100,
      alignment: Alignment.center,
      child: const Text('Box'),
    );
  }
}
