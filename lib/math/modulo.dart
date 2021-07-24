import 'package:fp/curry/curry2.dart';

double modulo(double x, double y) => x % y;
final moduloC = curry2(modulo);
final moduloCR = curry2R(modulo);
