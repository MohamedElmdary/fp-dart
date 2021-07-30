import 'package:fp/curry/curry3.dart';

List differenceWith(bool Function(dynamic, dynamic) predicate, List x, List y) {
  final List res = [];
  int i = -1;
  while (++i < x.length) {
    int j = -1;
    bool shouldBeAdded = true;
    while (++j < y.length) {
      if (predicate(x[i], y[j])) {
        shouldBeAdded = false;
        break;
      }
    }
    if (shouldBeAdded) {
      res.add(x[i]);
    }
  }
  return res;
}

final differenceWithC = curry3(differenceWith);
final differenceWithCR = curry3R(differenceWith);
