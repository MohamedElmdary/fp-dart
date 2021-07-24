import 'package:fp/types/curryFn.dart';

List<T> filter<T>(List<T> l, bool Function(T) p) {
  final List<T> res = [];
  int i = -1;
  while (++i < l.length) {
    if (p(l[i])) {
      res.add(l[i]);
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
