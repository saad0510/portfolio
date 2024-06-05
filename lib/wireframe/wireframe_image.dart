import 'package:flutter/material.dart';

import '../theme/sizes.dart';

class WireframeImage extends StatelessWidget {
  const WireframeImage({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Placeholder(
        strokeWidth: 1,
        child: Container(
          color: Colors.cyan.withOpacity(0.1),
          padding: Sizes.s10.pad,
          alignment: Alignment.center,
          child: const Text('Image'),
        ),
      ),
    );
  }
}
