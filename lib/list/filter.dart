import 'package:fp/types/curryFn.dart';

List<T> filter<T>(List<T> list, bool Function(T) predicate) {
  final List<T> res = [];
  int i = -1;
  while (++i < list.length) {
    if (predicate(list[i])) {
      res.add(list[i]);
    }
  }
  return res;
}

CurryFn<bool Function(T), List<T>> filterC<T>(List<T> list) {
  List<T> next(bool Function(T) predicate) {
    return filter(list, predicate);
  }

  return next;
}

CurryFn<List<T>, List<T>> filterCR<T>(bool Function(T) predicate) {
  List<T> next(List<T> list) {
    return filter(list, predicate);
  }

  return next;
}
