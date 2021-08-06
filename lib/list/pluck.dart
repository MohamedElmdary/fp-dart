import 'package:fp/curry/curry2.dart';

List pluck(dynamic index, List source) {
  dynamic k = index;

  if (k is int && k < 0) {
    k += source.length;
  }

  List res = [];

  int i = -1;
  while (++i < source.length) {
    res.add(source[i][k]);
  }

  return res;
}

final pluckC = curry2(pluck);
final pluckCR = curry2R(pluck);
