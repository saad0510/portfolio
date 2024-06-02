import 'package:flutter/material.dart';

import '../entities/nav_items.dart';

class NavigationController extends ChangeNotifier {
  NavItems selected = NavItems.home;

  NavigationController();

  void setItem(NavItems navItems) {
    selected = navItems;
    notifyListeners();
  }
}
