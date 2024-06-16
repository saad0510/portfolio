import 'package:flutter/material.dart';

enum ProjectType {
  mobile,
  web,
  desktop;

  String toMap() => name;

  static ProjectType fromMap(dynamic data) {
    final str = data?.toString().trim() ?? '';
    return values.byName(str);
  }

  double? width({bool compact = false}) {
    return switch (this) {
      ProjectType.mobile => 250,
      ProjectType.web => compact ? double.infinity : 500,
      ProjectType.desktop => compact ? double.infinity : 500,
    };
  }

  double? height({bool compact = false}) {
    return switch (this) {
      ProjectType.mobile => 500,
      ProjectType.web => compact ? null : 400,
      ProjectType.desktop => compact ? null : 400,
    };
  }

  Alignment get imageAlignment {
    return switch (this) {
      ProjectType.mobile => Alignment.topCenter,
      ProjectType.web => Alignment.topLeft,
      ProjectType.desktop => Alignment.topLeft,
    };
  }

  BoxFit get fit {
    return switch (this) {
      ProjectType.mobile => BoxFit.fitHeight,
      ProjectType.web => BoxFit.fitWidth,
      ProjectType.desktop => BoxFit.fitWidth,
    };
  }
}
