import 'package:fp/curry/curry2.dart';
import 'package:fp/function/deepEqual.dart';

List difference(List x, List y) {
  final List res = [];
  int i = -1;
  while (++i < x.length) {
    int j = -1;
    bool shouldBeAdded = true;
    while (++j < y.length) {
      if (deepEqual(x[i], y[j])) {
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

final differenceC = curry2(difference);
final differenceCR = curry2R(difference);
