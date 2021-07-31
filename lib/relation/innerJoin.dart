import 'package:fp/types/curryFn.dart';

List<T> innerJoin<T, R>(
  bool Function(T, R) predicate,
  List<T> items,
  List<R> from,
) {
  final List<T> res = [];

  int i = -1;
  while (++i < from.length) {
    int j = -1;
    while (++j < items.length) {
      if (predicate(items[j], from[i])) {
        res.add(items[j]);
        break;
      }
    }
  }

  return res;
}

Curry2Fn<List<T>, List<R>, List<T>> innerJoinC<T, R>(
  bool Function(T, R) predicate,
) {
  CurryFn<List<R>, List<T>> next(List<T> items) {
    List<T> next(List<R> from) {
      return innerJoin(predicate, items, from);
    }

    return next;
  }

  return next;
}

Curry2Fn<List<T>, bool Function(T, R), List<T>> innerJoinCR<T, R>(
  List<R> from,
) {
  CurryFn<bool Function(T, R), List<T>> next(List<T> items) {
    List<T> next(bool Function(T, R) predicate) {
      return innerJoin(predicate, items, from);
    }

    return next;
  }

  return next;
}
