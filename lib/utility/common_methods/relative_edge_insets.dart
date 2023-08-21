import 'package:flutter/material.dart';

import 'common_method.dart';

abstract class RelativeEdgeInsets {
  static EdgeInsets fromLTRB(
      double left, double top, double right, double bottom) {
    return EdgeInsets.fromLTRB(
      CommonMethod.calculate.relativeWidth(left),
      CommonMethod.calculate.relativeHeight(top),
      CommonMethod.calculate.relativeWidth(right),
      CommonMethod.calculate.relativeHeight(bottom),
    );
  }

  static EdgeInsets only(
      {double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return EdgeInsets.fromLTRB(
      CommonMethod.calculate.relativeWidth(left),
      CommonMethod.calculate.relativeHeight(top),
      CommonMethod.calculate.relativeWidth(right),
      CommonMethod.calculate.relativeHeight(bottom),
    );
  }

  static EdgeInsets symmetric({double vertical = 0, double horizontal = 0}) {
    return EdgeInsets.symmetric(
      horizontal: CommonMethod.calculate.relativeWidth(horizontal),
      vertical: CommonMethod.calculate.relativeHeight(vertical),
    );
  }
}
