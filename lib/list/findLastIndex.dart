import 'package:fp/types/curryFn.dart';

int findLastIndex<T>(List<T> list, bool Function(T) predicate) {
  int i = list.length;
  while (--i >= 0) {
    if (predicate(list[i])) {
      return i;
    }
  }
  return -1;
}

CurryFn<bool Function(T), int> findLastIndexC<T>(List<T> list) {
  int next(bool Function(T) predicate) {
    return findLastIndex(list, predicate);
  }

  return next;
}

CurryFn<List<T>, int> findLastIndexCR<T>(bool Function(T) predicate) {
  int next(List<T> list) {
    return findLastIndex(list, predicate);
  }

  return next;
}
