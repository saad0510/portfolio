import 'package:flutter/material.dart' show IconData, Icons;

class ServicesData {
  final String title;
  final String subtitle;
  final String iconStr;

  const ServicesData({
    required this.title,
    required this.subtitle,
    required this.iconStr,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'icon': iconStr,
    };
  }

  factory ServicesData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return ServicesData(
      title: map['title']?.toString() ?? '',
      subtitle: map['subtitle']?.toString() ?? '',
      iconStr: map['icon']?.toString() ?? '',
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
