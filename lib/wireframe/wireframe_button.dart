import 'package:flutter/material.dart';

import '../theme/sizes.dart';

class WireframeButton extends StatelessWidget {
  const WireframeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      padding: Sizes.padXY(x: Sizes.s16, y: Sizes.s10),
      alignment: Alignment.center,
      child: const Text('Button'),
    );
  }
}
