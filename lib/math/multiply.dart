import 'package:fp/fp.dart';

double multiply(num x, num y) => x.toDouble() * y.toDouble();

final multiplyC = curry2(multiply);
