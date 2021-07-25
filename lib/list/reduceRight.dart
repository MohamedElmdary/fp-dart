import 'package:fp/types/curryFn.dart';

R reduceRight<T, R>(R Function(R, T) reducer, R initValue, List<T> list) {
  R res = initValue;
  int i = list.length;
  while (--i >= 0) {
    res = reducer(res, list[i]);
  }
  return res;
}

Curry2Fn<R, List<T>, R> reduceRightC<T, R>(R Function(R, T) reducer) {
  CurryFn<List<T>, R> next(R initValue) {
    R next(List<T> list) {
      return reduceRight(reducer, initValue, list);
    }

    return next;
  }

  return next;
}

Curry2Fn<R, R Function(R, T), R> reduceRightCR<T, R>(List<T> list) {
  CurryFn<R Function(R, T), R> next(R initValue) {
    R next(R Function(R, T) reducer) {
      return reduceRight(reducer, initValue, list);
    }

    return next;
  }

  return next;
}
