import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/nav_items.dart';

class NavigationController extends Notifier<NavItems> {
  NavigationController();
  @override
  NavItems build() => NavItems.home;

  void setItem(NavItems navItems) {
    state = navItems;
    Scrollable.ensureVisible(
      navItems().currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.decelerate,
    );
  }
}

final navigationProvider = NotifierProvider<NavigationController, NavItems>(NavigationController.new);
