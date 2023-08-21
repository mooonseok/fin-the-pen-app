import 'package:fin_the_pen_app/widgets/atoms/button_atom.dart';
import 'package:flutter/material.dart';

import '../../styles/button_theme_type.dart';
import '../../styles/button_type.dart';
import '../../styles/color_type.dart';
import '../../styles/typo_type.dart';
import '../../utility/common_methods/primary_method.dart';

class LineButtonAtom extends ButtonAtom {
  final String title;
  final ButtonType buttonType;
  final ButtonThemeType buttonThemeType;
  final TextStyle? typoType;

  LineButtonAtom({
    super.key,
    required super.onTap,
    required this.title,
    this.buttonType = ButtonType.regular,
    this.buttonThemeType = ButtonThemeType.primary,
    this.typoType,
  }) : super(
          fixedSize: buttonType.fixedSize,
          backgroundColor: ColorType.baseBackground.color,
          borderRadius: buttonType.borderRadius,
          borderColor: PrimaryMethod.check.isNotNull(onTap)
              ? buttonThemeType.lineColor
              : buttonThemeType.disabledLineColor,
          splashColor: buttonThemeType.backgroundColor.withOpacity(0.2),
          titleWidget: Text(
            title,
            style: PrimaryMethod.check.isNull(typoType)
                ? TypoType.subtitle1.getTextStyle(
                    textColor: PrimaryMethod.check.isNotNull(onTap)
                        ? buttonThemeType.textColor
                        : buttonThemeType.disabledTextColor,
                  )
                : typoType!.copyWith(
                    color: PrimaryMethod.check.isNotNull(onTap)
                        ? buttonThemeType.textColor
                        : buttonThemeType.disabledTextColor,
                  ),
          ),
        );
}
