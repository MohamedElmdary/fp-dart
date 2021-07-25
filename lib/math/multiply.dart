import 'package:fp/curry/curry2.dart';

double multiply(num x, num y) => x.toDouble() * y.toDouble();

final multiplyC = curry2(multiply);
