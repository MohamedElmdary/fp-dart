import 'package:fp/list/list.dart';
import 'package:fp/types/curryFn.dart';

List<T> dropWhile<T>(List<T> list, bool Function(T) predicate) {
  int i = -1;
  while (++i < list.length) {
    if (!predicate(list[i])) {
      return drop(list, i);
    }
  }
  return [];
}

CurryFn<bool Function(T), List<T>> dropWhileC<T>(List<T> list) {
  List<T> next(bool Function(T) predicate) {
    return dropWhile(list, predicate);
  }

  return next;
}

CurryFn<List<T>, List<T>> dropWhileCR<T>(bool Function(T) predicate) {
  List<T> next(List<T> list) {
    return dropWhile(list, predicate);
  }

  return next;
}
