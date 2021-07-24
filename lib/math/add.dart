import 'package:fp/curry/curry2.dart';

double add(num x, num y) => x.toDouble() + y.toDouble();
final addC = curry2(add);
