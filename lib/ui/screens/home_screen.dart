import 'package:flutter/material.dart';

import '../../entities/nav_items.dart';
import '../../theme/sizes.dart';
import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/footer.dart';
import '../sections/introduction_section.dart';
import '../sections/nav_bar.dart';
import '../sections/projects_section.dart';
import '../sections/reviews_section.dart';
import '../sections/services_section.dart';
import '../sections/videos_section.dart';
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
            IntroductionSection(
              key: NavItems.home(),
            ),
            AboutSection(
              key: NavItems.about(),
            ),
            ServicesSection(
              key: NavItems.services(),
            ),
            ProjectsSection(
              key: NavItems.projects(),
            ),
            const ReviewsSection(
              key: ValueKey('reviews'),
            ),
            VideosSection(
              key: NavItems.videos(),
            ),
            ContactSection(
              key: NavItems.contact(),
            ),
            const Footer(
              key: ValueKey('footer'),
            ),
          ],
        ),
      ),
    );
  }
}
