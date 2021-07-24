import 'package:fp/curry/curry2.dart';

double subtract(double x, double y) => x - y;
final subtractC = curry2(subtract);
final subtractCR = curry2R(subtract);
