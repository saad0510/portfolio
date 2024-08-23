import 'package:flutter/material.dart' show IconData, Icons;

import '../core/extensions/json_ext.dart';
import 'sortable.dart';

class ServicesData extends Sortable {
  final String id;
  final String title;
  final String subtitle;
  final String iconStr;

  const ServicesData({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.iconStr,
    required super.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'icon': iconStr,
      'sort_order': sortOrder,
    };
  }

  factory ServicesData.fromMap(dynamic data) {
    final map = decodeMap(data);

    return ServicesData(
      id: map.decodeStr('id'),
      title: map.decodeStr('title'),
      subtitle: map.decodeStr('subtitle'),
      iconStr: map.decodeStr('icon'),
      sortOrder: map.decodeInt('sort_order'),
    );
  }

  IconData get icon {
    switch (iconStr) {
      case 'devices':
        return Icons.devices_rounded;
      case 'pest_control':
        return Icons.pest_control_rounded;
      case 'app_shortcut':
        return Icons.app_shortcut_outlined;
      default:
        return Icons.error;
    }
  }
}
