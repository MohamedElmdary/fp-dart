import 'package:fp/list/list.dart';
import 'package:fp/types/curryFn.dart';

List<Tuple<T, R>> xprod<T, R>(List<T> list1, List<R> list2) {
  final List<Tuple<T, R>> res = [];
  int i = -1;
  while (++i < list1.length) {
    int j = -1;
    while (++j < list2.length) {
      res.add(Tuple(list1[i], list2[j]));
    }
  }
  return res;
}

CurryFn<List<R>, List<Tuple<T, R>>> xprodC<T, R>(List<T> list1) {
  List<Tuple<T, R>> next(List<R> list2) {
    return xprod(list1, list2);
  }

  return next;
}
