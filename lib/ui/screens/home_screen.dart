import 'package:flutter/material.dart';

import '../../theme/sizes.dart';
import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/footer.dart';
import '../sections/introduction_section.dart';
import '../sections/nav_bar.dart';
import '../sections/projects_section.dart';
import '../sections/reviews_section.dart';
import '../sections/services_section.dart';
import 'project_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      extendBodyBehindAppBar: true,
      endDrawer: const ProjectDetailScreen(),
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
