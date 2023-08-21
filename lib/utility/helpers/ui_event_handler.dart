import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './ui_event.dart';

class UiEventHanldler extends Cubit<UiEvent> {
  UiEventHanldler() : super(const UiEvent.nothing());

  List<Dialog> dialogs = [];
  List<SnackBar> snackBars = [];

  void showDialog(Dialog dialog) {
    emit(UiEvent.showDialog(dialog));
  }

  void showSnackBar(SnackBar snackBar, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    emit(UiEvent.showSnackBar(snackBar));
  }
}
