import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'core/database/app_boxes.dart';
import 'firebase_options.dart';
import 'theme/app_theme.dart';
import 'ui/screens/home_screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await AppBoxes.openBoxes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaxWidthBox(
      maxWidth: 2000,
      child: ProviderScope(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Saad Portfolio',
          theme: AppTheme.theme,
          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 920, name: TABLET),
              const Breakpoint(start: 921, end: 1920, name: DESKTOP),
            ],
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
