import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_event.freezed.dart';

@freezed
abstract class UiEvent<T> with _$UiEvent<T> {
  const factory UiEvent.nothing() = Nothing;
  const factory UiEvent.showing() = UiEventShowing;
  const factory UiEvent.showSnackBar(SnackBar snackBar) = ShowSnackBar;
  const factory UiEvent.showDialog(Dialog dialog) = ShowDialog;
}
