import 'package:fp/types/curryFn.dart';

Map<R, List<T>> groupBy<T, R>(List<T> list, R Function(T) by) {
  final Map<R, List<T>> res = {};
  int i = -1;
  while (++i < list.length) {
    final key = by(list[i]!);
    if (res.containsKey(key)) {
      res[key]!.add(list[i]);
      continue;
    }
    res[key] = [list[i]];
  }
  return res;
}

CurryFn<R Function(T), Map<R, List<T>>> groupByC<T, R>(List<T> list) {
  Map<R, List<T>> next(R Function(T) by) {
    return groupBy(list, by);
  }

  return next;
}

CurryFn<List<T>, Map<R, List<T>>> groupByCR<T, R>(R Function(T) by) {
  Map<R, List<T>> next(List<T> list) {
    return groupBy(list, by);
  }

  return next;
}
