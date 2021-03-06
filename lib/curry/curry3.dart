import 'package:fp/types/types.dart';
import 'package:fp/curry/curry2.dart';

Curry3Fn<P1, P2, P3, R> curry3<P1, P2, P3, R>(R Function(P1, P2, P3) fn) {
  Curry2Fn<P2, P3, R> next(P1 p1) {
    R next(P2 p2, P3 p3) {
      return fn(p1, p2, p3);
    }
    return curry2(next);
  }
  return next;
}

Curry3Fn<P3, P2, P1, R> curry3R<P1, P2, P3, R>(R Function(P1, P2, P3) fn) {
  Curry2Fn<P2, P1, R> next(P3 p3) {
    R next(P2 p2, P1 p1) {
      return fn(p1, p2, p3);
    }
    return curry2(next);
  }
  return next;
}
