import 'package:fp/curry/curry2.dart';

double multiply(double x, double y) => x * y;
final multiplyC = curry2(multiply);
final multiplyCR = curry2R(multiply);
