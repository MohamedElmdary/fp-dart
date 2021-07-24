import 'package:fp/relation/equals.dart';
import 'package:fp/types/curryFn.dart';
import 'list.dart';

bool contains<T>(List<T> list, T item) {
  return any(list, equalsC(item));
}

CurryFn<T, bool> containsC<T>(List<T> list) {
  bool next(T item) {
    return contains(list, item);
  }

  return next;
}

CurryFn<List<T>, bool> containsCR<T>(T item) {
  bool next(List<T> list) {
    return contains(list, item);
  }

  return next;
}
