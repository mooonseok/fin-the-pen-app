import 'package:flutter/foundation.dart';

abstract class ConstPaths {
  // asset paths
  static const assets = 'lib/_assets';
  static const images = '$assets/images';
  static const imageAssets = "$images/bitmaps";
  static const svgAssets = "$images/vectors";

  // server paths
  static const _productionUrl = '';
  static const _developUrl = 'localhost:7300';
  static const baseUrl = kReleaseMode ? _productionUrl : _developUrl;
}
