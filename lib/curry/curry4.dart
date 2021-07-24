import 'package:fp/types/types.dart';
import 'package:fp/curry/curry3.dart';

CurryFn<P1, CurryFn<P2, CurryFn<P3, CurryFn<P4, R>>>> curry4<P1, P2, P3, P4, R>(R Function(P1, P2, P3, P4) fn) {
  CurryFn<P2, CurryFn<P3, CurryFn<P4, R>>> next(P1 p1) {
    R next(P2 p2, P3 p3, P4 p4) {
      return fn(p1, p2, p3, p4);
    }
    return curry3(next);
  }
  return next;
}

