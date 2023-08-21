import 'package:flutter/material.dart';

import '../utility/common_methods/common_method.dart';

enum ButtonType { large, regular, small, extraSmall }

extension ButtonTypeExtension on ButtonType {
  Size get fixedSize {
    Size size;
    switch (this) {
      case ButtonType.large:
        size = Size(CommonMethod.calculate.relativeWidth(375), 54);
        break;
      case ButtonType.regular:
        size = Size(CommonMethod.calculate.relativeWidth(329), 54);
        break;
      case ButtonType.small:
        size = Size(CommonMethod.calculate.relativeWidth(209), 46);
        break;
      case ButtonType.extraSmall:
        size = Size(CommonMethod.calculate.relativeWidth(133), 50);
        break;
    }
    return size;
  }

  BorderRadius get borderRadius {
    BorderRadius radius;
    switch (this) {
      case ButtonType.large:
        radius = BorderRadius.zero;
        break;
      case ButtonType.regular:
      case ButtonType.small:
      case ButtonType.extraSmall:
        radius = BorderRadius.circular(10);
        break;
    }
    return radius;
  }
}
