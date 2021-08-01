import 'package:fp/types/curryFn.dart';

List<T> differenceWith<T, R>(
  bool Function(T, R) predicate,
  List<T> x,
  List<R> y,
) {
  final List<T> res = [];
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

Curry2Fn<List<T>, List<R>, List<T>> differenceWithC<T, R>(
  bool Function(T, R) predicate,
) {
  CurryFn<List<R>, List<T>> next(List<T> x) {
    List<T> next(List<R> y) {
      return differenceWith(predicate, x, y);
    }

    return next;
  }

  return next;
}

Curry2Fn<List<T>, bool Function(T, R), List<T>> differenceWithCR<T, R>(
  List<R> y,
) {
  CurryFn<bool Function(T, R), List<T>> next(List<T> x) {
    List<T> next(bool Function(T, R) predicate) {
      return differenceWith(predicate, x, y);
    }

    return next;
  }

  return next;
}
