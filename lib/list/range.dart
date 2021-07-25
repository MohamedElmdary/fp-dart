import 'package:fp/curry/curry2.dart';

List<int> range(int start, int end) {
  final List<int> res = [];
  if (end > start) {
    int i = start - 1;
    while (++i < end) {
      res.add(i);
    }
  }
  return res;
}

final rangeC = curry2(range);
final rangeCR = curry2R(range);
