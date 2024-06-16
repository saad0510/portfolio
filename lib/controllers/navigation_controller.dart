import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/nav_items.dart';

class NavigationController extends Notifier<NavItems> {
  NavigationController();

  @override
  NavItems build() => NavItems.home;

  void setItem(NavItems navItems) {
    state = navItems;
  }

  NavItems get selected => state;
}

final navigationProvider = NotifierProvider<NavigationController, NavItems>(NavigationController.new);
