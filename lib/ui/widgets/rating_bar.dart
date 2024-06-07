import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({
    super.key,
    required this.filled,
    required this.maxCount,
  });

  final int filled;
  final int maxCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < maxCount; i++)
          Icon(
            Icons.star_rounded,
            size: 30,
            color: i <= filled ? Colors.orange : Colors.orange.withOpacity(0.5),
          ),
      ],
    );
  }
}
