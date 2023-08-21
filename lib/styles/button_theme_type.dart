import 'package:flutter/material.dart';

import 'color_type.dart';

enum ButtonThemeType {
  primary,
  grey,
  secondary,
}

extension ButtonThemeTypeExtension on ButtonThemeType {
  Color get backgroundColor {
    Color color;
    switch (this) {
      case ButtonThemeType.primary:
        color = ColorType.primary500.color;
        break;
      case ButtonThemeType.grey:
        color = ColorType.grey100.color;
        break;
      case ButtonThemeType.secondary:
        color = ColorType.textPrimary.color;
        break;
    }
    return color;
  }

  Color get textColor {
    Color color;
    switch (this) {
      case ButtonThemeType.primary:
        color = ColorType.baseBackground.color;
        break;
      case ButtonThemeType.secondary:
        color = ColorType.baseBackground.color;
        break;
      case ButtonThemeType.grey:
        color = ColorType.textPrimary.color;
        break;
    }
    return color;
  }

  Color get disabledBackgroundColor {
    Color color;
    switch (this) {
      case ButtonThemeType.primary:
      case ButtonThemeType.secondary:
      case ButtonThemeType.grey:
        color = ColorType.grey200.color;
        break;
    }
    return color;
  }

  Color get disabledTextColor {
    Color color;
    switch (this) {
      case ButtonThemeType.primary:
      case ButtonThemeType.secondary:
      case ButtonThemeType.grey:
        color = ColorType.textSecondary.color;
        break;
    }
    return color;
  }

  Color get lineColor => ColorType.primary600.color;

  Color get disabledLineColor => ColorType.grey500.color;
  Color get disabledLineTextColor => ColorType.placeholder.color;
}
