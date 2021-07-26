import 'package:fp/curry/curry2.dart';

bool or(bool x, bool y) {
  return x || y;
}

final orC = curry2(or);
