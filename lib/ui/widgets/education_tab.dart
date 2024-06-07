import 'package:flutter/material.dart';

import '../../theme/sizes.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Bachelors in Computer Science',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Sizes.s10.spaceY,
          const Text(
            'FAST NUCES Karachi',
          ),
          const Text(
            'CGPA: 3.8',
          ),
          Sizes.s24.spaceY,
          const Text(
            'Higher Secondary Certificate (HSC)',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Sizes.s10.spaceY,
          const Text(
            'Adamjee Government Science College',
          ),
          const Text(
            'Aggregate: 89%',
          ),
          Sizes.s24.spaceY,
          const Text(
            'Secondary School Certificate (SSC)',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Sizes.s10.spaceY,
          const Text(
            'Bright Future School',
          ),
          const Text(
            'Aggregate: 87%',
          ),
        ],
      ),
    );
  }
}
