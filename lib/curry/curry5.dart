import 'package:fp/types/types.dart';
import 'package:fp/curry/curry4.dart';

Curry5Fn<P1, P2, P3, P4, P5, R> curry5<P1, P2, P3, P4, P5, R>(R Function(P1, P2, P3, P4, P5) fn) {
  Curry4Fn<P2, P3, P4, P5, R> next(P1 p1) {
    R next(P2 p2, P3 p3, P4 p4, P5 p5) {
      return fn(p1, p2, p3, p4, p5);
    }
    return curry4(next);
  }
  return next;
}

Curry5Fn<P5, P4, P3, P2, P1, R> curry5R<P1, P2, P3, P4, P5, R>(R Function(P1, P2, P3, P4, P5) fn) {
  Curry4Fn<P4, P3, P2, P1, R> next(P5 p5) {
    R next(P4 p4, P3 p3, P2 p2, P1 p1) {
      return fn(p1, p2, p3, p4, p5);
    }
    return curry4(next);
  }
  return next;
}
