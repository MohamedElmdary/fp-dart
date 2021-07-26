import 'package:fp/logic/logic.dart';
import 'package:fp/types/curryFn.dart';

R until<T, R>(
  bool Function(T) predicate,
  R Function(dynamic) transformer,
  T value,
) {
  final _p = not(predicate);

  dynamic res = value;
  while (_p(res)) {
    res = transformer(res);
  }

  return res as R;
}

Curry2Fn<R Function(dynamic), T, R> untilC<T, R>(bool Function(T) predicate) {
  CurryFn<T, R> next(R Function(dynamic) transformer) {
    R next(T value) {
      return until(predicate, transformer, value);
    }

    return next;
  }

  return next;
}

Curry2Fn<R Function(dynamic), bool Function(T), R> untilCR<T, R>(T value) {
  CurryFn<bool Function(T), R> next(R Function(dynamic) transformer) {
    R next(bool Function(T) predicate) {
      return until(predicate, transformer, value);
    }

    return next;
  }

  return next;
}
