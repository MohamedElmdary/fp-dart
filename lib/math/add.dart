import 'package:fp/curry/curry2.dart';

double add(double x, double y) => x + y;
final addC = curry2(add);
