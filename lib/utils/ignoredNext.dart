import 'package:fp/types/ignoreArgs.dart';

IgnoreArgs<T> ignoredNext<T>(T Function() fn) {
  T next([a0, a1, a2, a3, a4, a5, a6, a7, a8, a9]) {
    return fn();
  }

  return next;
}

IgnoreArgs1<T, P1> ignoredNext1<T, P1>(T Function(P1) fn) {
  T next(P1 p1, [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9]) {
    return fn(p1);
  }

  return next;
}

IgnoreArgs2<T, P1, P2> ignoredNext2<T, P1, P2>(T Function(P1, P2) fn) {
  T next(P1 p1, P2 p2, [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9]) {
    return fn(p1, p2);
  }

  return next;
}

IgnoreArgs3<T, P1, P2, P3> ignoredNext3<T, P1, P2, P3>(
  T Function(P1, P2, P3) fn,
) {
  T next(P1 p1, P2 p2, P3 p3, [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9]) {
    return fn(p1, p2, p3);
  }

  return next;
}
