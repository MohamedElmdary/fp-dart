import 'package:fp/types/types.dart';
import 'package:fp/curry/curry3.dart';

Curry4Fn<P1, P2, P3, P4, R> curry4<P1, P2, P3, P4, R>(R Function(P1, P2, P3, P4) fn) {
  Curry3Fn<P2, P3, P4, R> next(P1 p1) {
    R next(P2 p2, P3 p3, P4 p4) {
      return fn(p1, p2, p3, p4);
    }
    return curry3(next);
  }
  return next;
}

Curry4Fn<P4, P3, P2, P1, R> curry4R<P1, P2, P3, P4, R>(R Function(P1, P2, P3, P4) fn) {
  Curry3Fn<P3, P2, P1, R> next(P4 p4) {
    R next(P3 p3, P2 p2, P1 p1) {
      return fn(p1, p2, p3, p4);
    }
    return curry3(next);
  }
  return next;
}
