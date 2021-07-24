import 'package:fp/curry/curry2.dart';

List<T> filter<T>(List<T> list, bool Function(T, int) predicate) {
  final List<T> res = [];
  int i = -1;
  while (++i < list.length) {
    if (predicate(list[i], i)) {
      res.add(list[i]);
    }
  }
  return res;
}

final filterC = curry2(filter);
final filterCR = curry2R(filter);
