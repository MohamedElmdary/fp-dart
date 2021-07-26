import 'package:fp/types/curryFn.dart';

T tap<T>(Function(T) fn, T value) {
  fn(value);
  return value;
}

CurryFn<T, T> tapC<T>(Function(T) fn) {
  T next(T value) {
    return tap(fn, value);
  }

  return next;
}
