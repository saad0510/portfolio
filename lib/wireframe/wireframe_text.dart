import 'package:flutter/material.dart';

import '../theme/sizes.dart';

class WireframeText extends StatelessWidget {
  const WireframeText({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.deepPurple.shade100,
      padding: Sizes.padXY(x: Sizes.s16, y: Sizes.s10),
      alignment: Alignment.center,
      child: const Text('Text'),
    );
  }
}
