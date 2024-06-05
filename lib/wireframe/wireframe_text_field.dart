import 'package:flutter/material.dart';

import '../theme/sizes.dart';

class WireframeTextField extends StatelessWidget {
  const WireframeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.pink.shade100,
      padding: Sizes.padXY(x: Sizes.s16, y: Sizes.s10),
      alignment: Alignment.center,
      child: const Text('TextField'),
    );
  }
}
