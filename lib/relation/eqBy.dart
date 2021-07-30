import 'package:fp/curry/curry3.dart';

bool eqBy(Function fn, dynamic x, dynamic y) {
  return fn(x) == fn(y);
}

final eqByC = curry3(eqBy);
final eqByCR = curry3R(eqBy);
