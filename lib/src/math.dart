import 'package:fp/curry/curry2.dart';

double add(double x, double y) => x + y;
final addC = curry2(add);
final inc = addC(1);

double subtract(double x, double y) => x - y;
final subtractC = curry2(subtract);
final subtractCR = curry2R(subtract);
final dec = subtractCR(1);

double divide(double x, double y) => x / y;
final divideC = curry2(divide);
final divideCR = curry2R(divide);

double multiply(double x, double y) => x * y;
final multiplyC = curry2(multiply);
final multiplyCR = curry2R(multiply);

double modulo(double x, double y) => x % y;
final moduloC = curry2(modulo);
final moduloCR = curry2R(modulo);

double mean(List<double> list) {
  if (list.length == 0) {
    return double.nan;
  }
  return list.fold<double>(0, (total, current) => total + current) / list.length;
}

double median(List<double> list) {
  if (list.length == 0) {
    return double.nan;
  }
  
  final List<double> clone = list.sublist(0);
  clone.sort((a, b) => a > b ? 1 : -1);

  if (modulo(clone.length.toDouble(), 2) == 0) {
    final int i = clone.length ~/ 2;
    return (clone[i] + clone[i - 1]) / 2;
  }

  return clone[(clone.length / 2).floor()];
}

double negate(double x) => -x;

double product(List<double> list) => list.fold(1, multiply);