import 'package:flutter/material.dart';

import '../../styles/color_type.dart';

abstract class ConstProperties {
  const ConstProperties();
  static const widthFactor = 0.9;
  static final tapEffectColor = ColorType.primary500.color.withOpacity(0.1);
  static late double bottomNavigationHeight;
  static final double safePadding = WidgetsBinding.instance.window.padding.top;
  static const loginTimer = 180;
  static const repostTimer = 10;
}
