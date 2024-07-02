import 'package:flutter/material.dart';

import '../core/extensions/text_ext.dart';

enum NavItems {
  home,
  about,
  services,
  projects,
  videos,
  contact,
  ;

  @override
  String toString() => name.camelCaseToString();

  static final uiSectionKeys = {
    for (final item in NavItems.values) ...{
      item: GlobalKey(debugLabel: item.name),
    },
  };

  GlobalKey call() {
    return uiSectionKeys[this]!;
  }
}
