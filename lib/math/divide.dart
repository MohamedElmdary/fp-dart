import 'package:fp/curry/curry2.dart';

double divide(double x, double y) => x / y;
final divideC = curry2(divide);
final divideCR = curry2R(divide);
