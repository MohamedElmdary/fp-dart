import 'package:fp/types/types.dart';

Curry2Fn<P1, P2, R> curry2<P1, P2, R>(R Function(P1, P2) fn) {
  CurryFn<P2, R>  next(P1 p1) {
    R next(P2 p2) {
      return fn(p1, p2);
    }
    return next;
  }
  return next;
}

Curry2Fn<P2, P1, R> curry2R<P1, P2, R>(R Function(P1, P2) fn) {
  CurryFn<P1, R>  next(P2 p2) {
    R next(P1 p1) {
      return fn(p1, p2);
    }
    return next;
  }
  return next;
}
