import 'package:fp/types/curryFn.dart';

R reduce<T, R>(R Function(R, T) reducer, R initValue, List<T> list) {
  R res = initValue;
  int i = -1;
  while (++i < list.length) {
    res = reducer(res, list[i]);
  }
  return res;
}

Curry2Fn<R, List<T>, R> reduceC<T, R>(R Function(R, T) reducer) {
  CurryFn<List<T>, R> next(R initValue) {
    R next(List<T> list) {
      return reduce(reducer, initValue, list);
    }

    return next;
  }

  return next;
}

Curry2Fn<R, R Function(R, T), R> reduceCR<T, R>(List<T> list) {
  CurryFn<R Function(R, T), R> next(R initValue) {
    R next(R Function(R, T) reducer) {
      return reduce(reducer, initValue, list);
    }

    return next;
  }

  return next;
}
