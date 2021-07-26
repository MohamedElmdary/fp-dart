import 'package:fp/curry/curry2.dart';

bool and(bool x, bool y) {
  return x && y;
}

final andC = curry2(and);
