import '../../constants/const_device_props.dart';
import '../primary_method_classes/primary_calculator.dart';

class CommonCalculator extends PrimaryCalculator {
  static final _instance = CommonCalculator._();
  static get instance => _instance;

  CommonCalculator._();

  /// 화면 대비 위젯의 너비를 계산하여 반환한다.
  double relativeWidth(
    double intendedWidth, {
    double standardScreenWidth = ConstDeviceProps.standardScreenWidth,
  }) {
    double screenWidth = ConstDeviceProps.screenWidth;
    return intendedWidth * screenWidth / standardScreenWidth;
  }

  /// 화면 대비 위젯의 높이를 계산하여 반환한다.
  double relativeHeight(
    double intendedHeight, {
    double standardScreenHeight = ConstDeviceProps.standardScreenHeight,
  }) {
    double screenHeight = ConstDeviceProps.screenHeight;
    return intendedHeight * screenHeight / standardScreenHeight;
  }
}
