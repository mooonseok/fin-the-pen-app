import 'package:flutter/material.dart';

enum ShadowType {
  none,
  shadow01,
  shadow02,
  shadow03,
  shadow04,
  shadow05,
}

extension ShadowTypeExtension on ShadowType {
  List<BoxShadow> get shadow {
    List<BoxShadow> shadow;

    switch (this) {
      case ShadowType.shadow01:
        shadow = _shadow01;
        break;
      case ShadowType.shadow02:
        shadow = _shadow02;
        break;
      case ShadowType.shadow03:
        shadow = _shadow03;
        break;
      case ShadowType.shadow04:
        shadow = _shadow04;
        break;
      case ShadowType.shadow05:
        shadow = _shadow05;
        break;
      case ShadowType.none:
        shadow = [];
        break;
    }
    return shadow;
  }

  List<BoxShadow> get _shadow01 => [
        BoxShadow(
          offset: const Offset(0, 1),
          blurRadius: 2,
          spreadRadius: -2,
          color: const Color(0xFF7C7C7C).withOpacity(0.16),
        ),
        BoxShadow(
          offset: const Offset(0, 3),
          blurRadius: 6,
          spreadRadius: 0,
          color: const Color(0xFF7C7C7C).withOpacity(0.12),
        ),
        BoxShadow(
          offset: const Offset(0, 5),
          blurRadius: 12,
          spreadRadius: 4,
          color: const Color(0xFF7C7C7C).withOpacity(0.09),
        ),
      ];

  List<BoxShadow> get _shadow02 => [
        BoxShadow(
          offset: const Offset(0, 3),
          blurRadius: 6,
          spreadRadius: -4,
          color: const Color(0xFF7C7C7C).withOpacity(0.12),
        ),
        BoxShadow(
          offset: const Offset(0, 6),
          blurRadius: 16,
          spreadRadius: 0,
          color: const Color(0xFF7C7C7C).withOpacity(0.08),
        ),
        BoxShadow(
          offset: const Offset(0, 9),
          blurRadius: 28,
          spreadRadius: 8,
          color: const Color(0xFF7C7C7C).withOpacity(0.05),
        ),
      ];

  List<BoxShadow> get _shadow03 => [
        BoxShadow(
          offset: const Offset(0, 6),
          blurRadius: 16,
          spreadRadius: -8,
          color: Colors.black.withOpacity(0.03),
        ),
        BoxShadow(
          offset: const Offset(0, 9),
          blurRadius: 28,
          spreadRadius: 0,
          color: const Color(0xFF7C7C7C).withOpacity(0.05),
        ),
        BoxShadow(
          offset: const Offset(0, 12),
          blurRadius: 48,
          spreadRadius: 16,
          color: const Color(0xFF7C7C7C).withOpacity(0.03),
        ),
      ];

  List<BoxShadow> get _shadow04 => [
        BoxShadow(
          offset: const Offset(0, 0),
          blurRadius: 10,
          spreadRadius: 0,
          color: Colors.black.withOpacity(0.14),
        ),
      ];
  List<BoxShadow> get _shadow05 => [
        BoxShadow(
          offset: const Offset(0, 0),
          blurRadius: 10,
          spreadRadius: 0,
          color: const Color(0xFF7C7C7C).withOpacity(0.10),
        ),
      ];
}
