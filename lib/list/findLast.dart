import 'package:fp/list/list.dart';
import 'package:fp/types/curryFn.dart';

T? findLast<T>(List<T> list, bool Function(T) predicate) {
  final int i = findLastIndex(list, predicate);
  if (i == -1) {
    return null;
  }
  return list[i];
}

CurryFn<bool Function(T), T?> findLastC<T>(List<T> list) {
  T? next(bool Function(T) predicate) {
    return findLast(list, predicate);
  }

  return next;
}

CurryFn<List<T>, T?> findLastCR<T>(bool Function(T) predicate) {
  T? next(List<T> list) {
    return findLast(list, predicate);
  }

  return next;
}
