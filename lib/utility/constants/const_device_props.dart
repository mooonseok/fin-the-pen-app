import 'package:sizer/sizer.dart';

abstract class ConstDeviceProps {
  static double get screenWidth => 100.w;
  static double get screenHeight => 100.h;
  static double get screenRatio => screenWidth / standardScreenWidth;
  static const double standardScreenWidth = 375;
  static const double standardScreenHeight = 812;
}
