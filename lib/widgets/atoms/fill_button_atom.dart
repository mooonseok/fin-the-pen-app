import 'package:flutter/material.dart';

import '../../styles/button_theme_type.dart';
import '../../styles/button_type.dart';
import '../../styles/typo_type.dart';
import '../../utility/common_methods/primary_method.dart';
import 'button_atom.dart';

class FillButtonAtom extends ButtonAtom {
  final String title;
  final ButtonType buttonType;
  final ButtonThemeType buttonThemeType;
  final TextStyle? typoType;

  FillButtonAtom({
    super.key,
    required super.onTap,
    required this.title,
    this.buttonType = ButtonType.large,
    this.buttonThemeType = ButtonThemeType.primary,
    this.typoType,
  }) : super(
          fixedSize: buttonType.fixedSize,
          backgroundColor: buttonThemeType.backgroundColor,
          borderRadius: buttonType.borderRadius,
          disabledBackgroundColor: buttonThemeType.disabledBackgroundColor,
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
