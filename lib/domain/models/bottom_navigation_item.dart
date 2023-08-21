import 'package:flutter/material.dart';

class BottomNavigationItem {
  final Widget Function(bool isActivated) iconBuilder;
  final String labelText;
  final Widget page;

  BottomNavigationItem({
    required this.iconBuilder,
    this.labelText = '',
    required this.page,
  });
}
