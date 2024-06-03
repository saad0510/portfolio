import 'package:flutter/material.dart';

import '../../theme/sizes.dart';
import '../sections/app_navigation_bar.dart';
import '../sections/introduction_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavigationBar(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Sizes.s100.spaceY,
            const IntroductionSection(),
          ],
        ),
      ),
    );
  }
}
