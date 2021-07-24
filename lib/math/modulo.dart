import 'package:fp/curry/curry2.dart';

double modulo(num x, num y) => x.toDouble() % y.toDouble();
final moduloC = curry2(modulo);
final moduloCR = curry2R(modulo);
