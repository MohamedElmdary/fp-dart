import 'package:fp/curry/curry2.dart';

String concat(String x, String y) {
  return x + y;
}

final concatC = curry2(concat);
final concatCR = curry2R(concat);
