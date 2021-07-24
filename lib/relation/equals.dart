import 'package:fp/types/curryFn.dart';

bool equals<T, R>(T x, R y) {
  return x == y;
}

CurryFn<R, bool> equalsC<T, R>(T x) {
  bool next(R y) {
    return equals(x, y);
  }

  return next;
}
