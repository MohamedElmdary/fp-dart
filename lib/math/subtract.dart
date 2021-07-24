import 'package:fp/fp.dart';

double subtract(num x, num y) => x.toDouble() - y.toDouble();

final subtractC = curry2(subtract);
final subtractCR = curry2R(subtract);
