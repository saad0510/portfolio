import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'controllers/data_provider.dart';
import 'controllers/entites_provider.dart';
import 'controllers/navigation_controller.dart';
import 'theme/app_theme.dart';
import 'ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaxWidthBox(
      maxWidth: 2000,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DataProvider()),
          ChangeNotifierProvider(create: (_) => EntitesProvider()),
          ChangeNotifierProvider(create: (_) => NavigationController()),
        ],
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
