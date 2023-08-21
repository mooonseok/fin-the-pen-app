import 'package:flutter/material.dart';

class AppBarMolecule extends AppBar {
  final List<Widget>? actionWidget;
  final Widget? titleWidget;
  final Widget? leadingWidget;

  AppBarMolecule({
    super.key,
    this.actionWidget,
    this.titleWidget,
    this.leadingWidget,
  }) : super(
          surfaceTintColor: Colors.transparent,
          actions: actionWidget,
          title: titleWidget,
          leading: leadingWidget,
        );
}
