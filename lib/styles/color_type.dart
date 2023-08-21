import 'package:flutter/material.dart';

enum ColorType {
  //Primary
  primary300,
  primary400,
  primary500,
  primary600,
  primary700,

  //Secondary
  secondary300,
  secondary400,
  secondary500,
  secondary600,
  secondary700,

  //System
  warn,
  orange,
  strong,
  green,
  blue,
  backDrop,
  snackBar,
  inputPrimary,
  inputSecondary,

  //Pastel
  pastelBlue,
  pastelSkyBlue,
  pastelYellow,
  pastelRed,
  pastelGreen,
  pastelOrange,
  pastelPurple,

  //Grey
  grey800,
  grey700,
  grey600,
  grey500,
  grey400,
  grey300,
  grey200,
  grey100,
  grey50,

  //Base
  baseBackground,
  baseLine,
  borderThin,

  //Text
  textTitle,
  textPrimary,
  placeholder,
  textSecondary,
}

extension ColorTypesExtension on ColorType {
  Color get color {
    switch (this) {
      //Primary
      case ColorType.primary300:
        return setColor('D1F4F5');
      case ColorType.primary400:
        return setColor('5ADBE1');
      case ColorType.primary500:
        return setColor('17C7CF');
      case ColorType.primary600:
        return setColor('25B5CD');
      case ColorType.primary700:
        return setColor('25B5CD');

      //Secondary
      case ColorType.secondary300:
        return setColor('D1F4F5');
      case ColorType.secondary400:
        return setColor('D1F4F5');
      case ColorType.secondary500:
        return setColor('D1F4F5');
      case ColorType.secondary600:
        return setColor('D1F4F5');
      case ColorType.secondary700:
        return setColor('D1F4F5');

      //System
      case ColorType.blue:
        return setColor('01063C');
      case ColorType.strong:
        return setColor('FFC300');
      case ColorType.warn:
        return setColor('FE324E');
      case ColorType.green:
        return setColor('50BC32');
      case ColorType.orange:
        return setColor('FF9500');
      case ColorType.backDrop:
        return setColor('000000').withOpacity(0.7);
      case ColorType.snackBar:
        return setColor('161D24').withOpacity(0.75);
      case ColorType.inputPrimary:
        return setColor('FFD600').withOpacity(0.1);
      case ColorType.inputSecondary:
        return setColor('030D77').withOpacity(0.1);

      //Pastel
      case ColorType.pastelRed:
        return setColor('FFE2E0');
      case ColorType.pastelOrange:
        return setColor('FFEFD9');
      case ColorType.pastelYellow:
        return setColor('FFF7D9');
      case ColorType.pastelGreen:
        return setColor('EDF8EB');
      case ColorType.pastelSkyBlue:
        return setColor('E6F7FE');
      case ColorType.pastelBlue:
        return setColor('D9EAFD');
      case ColorType.pastelPurple:
        return setColor('F2EAFF');

      //Grey
      case ColorType.grey800:
        return setColor('272727');
      case ColorType.grey700:
        return setColor('2D2D2D');
      case ColorType.grey600:
        return setColor('404040');
      case ColorType.grey500:
        return setColor('606060');
      case ColorType.grey400:
        return setColor('909090');
      case ColorType.grey300:
        return setColor('B1B1B1');
      case ColorType.grey200:
        return setColor('ECECEC');
      case ColorType.grey100:
        return setColor('ECECEC');
      case ColorType.grey50:
        return setColor('FEFEFE');

      //Base
      case ColorType.baseBackground:
        return setColor('FFFFFF');
      case ColorType.baseLine:
        return setColor('F7F8F9');
      case ColorType.borderThin:
        return setColor('E9EBEE');

      //Text
      case ColorType.textTitle:
        return setColor('000000');
      case ColorType.textPrimary:
        return setColor('272727');
      case ColorType.textSecondary:
        return setColor('646F7C');
      case ColorType.placeholder:
        return setColor('C5C8CE');
    }
  }

  Color setColor(String value) => Color(int.parse('0xFF$value'));
}
