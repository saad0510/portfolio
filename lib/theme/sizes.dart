import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Sizes {
  s120(120),
  s32(32),
  s18(18),
  s12(12),
  s10(10),
  s0(0),
  ;

  final double value;

  const Sizes(this.value);

  EdgeInsets get padX => EdgeInsets.symmetric(horizontal: value);

  EdgeInsets get padY => EdgeInsets.symmetric(vertical: value);

  EdgeInsets get pad => EdgeInsets.all(value);

  static EdgeInsets padXY({required Sizes x, required Sizes y}) {
    return EdgeInsets.symmetric(
      horizontal: x.value,
      vertical: y.value,
    );
  }
}
