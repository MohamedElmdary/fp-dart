import 'package:fp/types/curryFn.dart';

int findIndex<T>(List<T> list, bool Function(T) predicate) {
  int i = -1;
  while (++i < list.length) {
    if (predicate(list[i])) {
      return i;
    }
  }
  return -1;
}

CurryFn<bool Function(T), int> findIndexC<T>(List<T> list) {
  int next(bool Function(T) predicate) {
    return findIndex(list, predicate);
  }

  return next;
}

CurryFn<List<T>, int> findIndexCR<T>(bool Function(T) predicate) {
  int next(List<T> list) {
    return findIndex(list, predicate);
  }

  return next;
}
