import 'package:fp/list/findIndex.dart';
import 'package:fp/types/curryFn.dart';

T? find<T>(List<T> list, bool Function(T) predicate) {
  final int i = findIndex(list, predicate);
  if (i == -1) {
    return null;
  }
  return list[i];
}

CurryFn<bool Function(T), T?> findC<T>(List<T> list) {
  T? next(bool Function(T) predicate) {
    return find(list, predicate);
  }

  return next;
}

CurryFn<List<T>, T?> findCR<T>(bool Function(T) predicate) {
  T? next(List<T> list) {
    return find(list, predicate);
  }

  return next;
}
