import 'package:flutter/material.dart';

import '../utility/constants/const_device_props.dart';
import 'color_type.dart';

enum TypoType {
  //Header
  header0,
  header1,
  header2,

  //Subtitle
  subtitle1,
  subtitle2,
  subtitle3,
  subtitle4,

  //Body
  body1M,
  body2M,
  body3M,
  body1,
  body2,
  body3,

  //Caption
  caption1,
  caption2,
}

extension TypoTypeExtension on TypoType {
  TextStyle generator({
    required FontWeight fontWeight,
    required double fontSize,
    double height = 1.0,
    Color? color,
    String fontFamily = "Pretendard",
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize * ConstDeviceProps.screenRatio,
        height: height,
        color: color ?? ColorType.textTitle.color,
        fontFamily: fontFamily,
        decoration: decoration,
      );

  TextStyle getTextStyle(
      {Color? textColor, TextDecoration? decoration, double? height}) {
    switch (this) {
      case TypoType.header0:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 32,
          height: height ?? 1.25,
          color: textColor,
        );
      case TypoType.header1:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 24,
          height: height ?? 1.285,
          color: textColor,
        );
      case TypoType.header2:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 20,
          height: height ?? 1.333,
          color: textColor,
        );
      case TypoType.subtitle1:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 18,
          height: height ?? 1.333,
          color: textColor,
        );
      case TypoType.subtitle2:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 16,
          height: height ?? 1.5,
          color: textColor,
        );
      case TypoType.subtitle3:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 14,
          height: height ?? 1.428,
          color: textColor,
        );
      case TypoType.subtitle4:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 12,
          height: height ?? 1.5,
          color: textColor,
        );

      case TypoType.body1M:
        return generator(
          fontWeight: _WeightType.medium.wieght,
          fontSize: 16,
          height: height ?? 1.5,
          color: textColor,
        );
      case TypoType.body2M:
        return generator(
          fontWeight: _WeightType.medium.wieght,
          fontSize: 14,
          height: height ?? 1.428,
          color: textColor,
        );
      case TypoType.body3M:
        return generator(
          fontWeight: _WeightType.medium.wieght,
          fontSize: 12,
          height: height ?? 1.5,
          color: textColor,
        );
      case TypoType.body1:
        return generator(
          fontWeight: _WeightType.regular.wieght,
          fontSize: 16,
          height: height ?? 1.5,
          color: textColor,
        );
      case TypoType.body2:
        return generator(
          fontWeight: _WeightType.regular.wieght,
          fontSize: 13,
          height: height ?? 1.428,
          color: textColor,
        );
      case TypoType.body3:
        return generator(
          fontWeight: _WeightType.regular.wieght,
          fontSize: 14,
          height: height ?? 1.5,
          color: textColor,
        );
      case TypoType.caption1:
        return generator(
          fontWeight: _WeightType.regular.wieght,
          fontSize: 12,
          height: height ?? 1.5,
          color: textColor,
        );
      case TypoType.caption2:
        return generator(
          fontWeight: _WeightType.bold.wieght,
          fontSize: 10,
          height: height ?? 1.2,
          color: textColor,
        );
    }
  }
}

enum _WeightType {
  thin,
  light,
  regular,
  medium,
  bold,
  black,
}

extension _WeightExtension on _WeightType {
  FontWeight get wieght {
    switch (this) {
      case _WeightType.thin:
        return FontWeight.w100;
      case _WeightType.light:
        return FontWeight.w300;
      case _WeightType.regular:
        return FontWeight.w400;
      case _WeightType.medium:
        return FontWeight.w500;
      case _WeightType.bold:
        return FontWeight.w700;
      case _WeightType.black:
        return FontWeight.w900;
    }
  }
}
