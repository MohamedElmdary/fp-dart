import 'package:fp/types/curryFn.dart';

bool all<T>(bool Function(T) predicate, List<T> list) {
  int i = -1;
  while (++i < list.length) {
    if (!predicate(list[i])) {
      return false;
    }
  }
  return true;
}

CurryFn<List<T>, bool> allC<T>(bool Function(T) predicate) {
  bool next(List<T> list) {
    return all(predicate, list);
  }

  return next;
}

CurryFn<bool Function(T), bool> allCR<T>(List<T> list) {
  bool next(bool Function(T) predicate) {
    return all(predicate, list);
  }

  return next;
}
