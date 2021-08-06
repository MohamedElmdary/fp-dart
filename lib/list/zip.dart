import 'package:fp/relation/min.dart';
import 'package:fp/types/curryFn.dart';

class Tuple<X, Y> {
  final X x;
  final Y y;
  const Tuple(this.x, this.y);

  List toList() {
    return [x, y];
  }
}

List<Tuple<T, R>> zip<T, R>(List<T> list1, List<R> list2) {
  final length = min([list1.length, list2.length]);
  final List<Tuple<T, R>> res = [];
  int i = -1;
  while (++i < length) {
    res.add(Tuple(list1[i], list2[i]));
  }
  return res;
}

CurryFn<List<R>, List<Tuple<T, R>>> zipC<T, R>(List<T> list1) {
  List<Tuple<T, R>> next(List<R> list2) {
    return zip(list1, list2);
  }

  return next;
}
