import 'package:fp/types/curryFn.dart';

bool any<T>(List<T> list, bool Function(T) predicate) {
  int i = -1;
  while (++i < list.length) {
    if (predicate(list[i])) {
      return true;
    }
  }
  return false;
}

CurryFn<bool Function(T), bool> anyC<T>(List<T> list) {
  bool next(bool Function(T) predicate) {
    return any(list, predicate);
  }

  return next;
}

CurryFn<List<T>, bool> anyCR<T>(bool Function(T) predicate) {
  bool next(List<T> list) {
    return any(list, predicate);
  }

  return next;
}
