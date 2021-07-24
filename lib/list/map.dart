import 'package:fp/curry/curry2.dart';

List<R> map<T, R>(List<T> list, R Function(T, int) mapper) {
  int i = 0;
  final List<R> res = [];
  while (i < list.length) {
    res.add(mapper(list[i], i++));
  }
  return res;
}

final mapC = curry2(map);
final mapCR = curry2R(map);
