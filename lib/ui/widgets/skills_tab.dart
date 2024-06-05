import 'package:flutter/material.dart';

import '../../theme/sizes.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Frontend Development',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Sizes.s10.spaceY,
          const Text(
            'I develop beautiful and responsive frontend UI designs in flutter. I also recreate given designs from websites like Figma, Adobe XD.',
          ),
          Sizes.s16.spaceY,
          const Text(
            'Backend Integration',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Sizes.s10.spaceY,
          const Text(
            'I integrate backend APIs and databases into the frontend applications. I specialize in using firebase services for backend.',
          ),
          Sizes.s16.spaceY,
          const Text(
            'AI Technologies',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Sizes.s10.spaceY,
          const Text(
            'I extensively use Artificial Intelligence in my apps, ranging from OpenAI & Gemini APIs to smart recommendation systems.',
          ),
        ],
      ),
    );
  }
}
