import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../widgets/atoms/space_box_atom.dart';
import '../../constants/const_paths.dart';
import '../primary_method_classes/primary_formatter.dart';

class CommonFormatter extends PrimaryFormatter {
  static final _instance = CommonFormatter._();
  static get instance => _instance;

  CommonFormatter._();

  /// [file]의 크기를 계산하여 단위와 함께 반환한다.
  /// [decimals] 파라미터로 소수점 아래 몇 번째 자리까지 표현할지 결정한다.
  Future<String> fileSize(File file, int decimals) async {
    int bytes = await file.length();
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }

  /// [ConstPaths.imageAssets] + [fileName] 문자열 반환
  String assetImageDirectory(String fileName) {
    if (fileName.contains(ConstPaths.imageAssets)) return fileName;
    fileName = fileName.split('/').last;
    return ConstPaths.imageAssets + fileName;
  }

  String thousandFormatter(int input) {
    String output;
    var format = NumberFormat('###,###,###,###');
    output = format.format(input);
    return output;
  }

  List<Widget> insertSpacesBetweenWidget(List<Widget> widgets,
      {double horizontalSpace = 0.0, double verticalSpace = 0.0}) {
    final List<Widget> tmp = List.from(widgets);
    for (int i = widgets.length - 1; i > 0; i--) {
      var spaceBoxAtom =
          SpaceBoxAtom(width: horizontalSpace, height: verticalSpace);
      tmp.insert(i, spaceBoxAtom);
    }
    return tmp;
  }
}
