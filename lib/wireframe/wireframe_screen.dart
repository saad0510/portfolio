import 'package:flutter/material.dart';

import '../theme/sizes.dart';
import '../ui/sections/about_section.dart';
import '../ui/sections/contact_section.dart';
import '../ui/sections/footer.dart';
import '../ui/sections/introduction_section.dart';
import '../ui/sections/nav_bar.dart';
import '../ui/sections/projects_section.dart';
import '../ui/sections/reviews_section.dart';
import '../ui/sections/services_section.dart';

class WireframeScreen extends StatelessWidget {
  const WireframeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Sizes.s100.spaceY,
            const IntroductionSection(),
            const AboutSection(),
            const ServicesSection(),
            const ProjectsSection(),
            const ReviewsSection(),
            const ContactSection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
