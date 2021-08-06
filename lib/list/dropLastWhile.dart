import 'package:fp/list/list.dart';
import 'package:fp/types/curryFn.dart';

List<T> dropLastWhile<T>(List<T> list, bool Function(T) predicate) {
  int i = list.length;
  while (--i >= 0) {
    if (!predicate(list[i])) {
      return dropLast(list, i - 1);
    }
  }
  return [];
}

CurryFn<bool Function(T), List<T>> dropLastWhileC<T>(List<T> list) {
  List<T> next(bool Function(T) predicate) {
    return dropLastWhile(list, predicate);
  }

  return next;
}

CurryFn<List<T>, List<T>> dropLastWhileCR<T>(bool Function(T) predicate) {
  List<T> next(List<T> list) {
    return dropLastWhile(list, predicate);
  }

  return next;
}
