import 'package:flutter/material.dart';

import '../sections/app_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppNavigationBar(),
    );
  }
}
