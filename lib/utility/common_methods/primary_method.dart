import './primary_method_classes/primary_calculator.dart';
import './primary_method_classes/primary_checker.dart';
import './primary_method_classes/primary_formatter.dart';

abstract class PrimaryMethod {
  static const check = PrimaryChecker();
  static const calculate = PrimaryCalculator();
  static const format = PrimaryFormatter();
}
