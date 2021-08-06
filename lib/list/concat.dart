import 'package:fp/curry/curry2.dart';
import 'append.dart';

dynamic concat(dynamic x, dynamic y) {
  if (x is List && y is List) {
    return append(x, y);
  }
  return x + y;
}

final concatC = curry2(concat);
final concatCR = curry2R(concat);
