import 'package:fp/types/curryFn.dart';

List<T> drop<T>(List<T> list, int length) {
  final List<T> res = [];

  if (length >= list.length) {
    return res;
  }

  int i = length;
  while (i < list.length) {
    res.add(list[i++]);
  }
  return res;
}

CurryFn<int, List<T>> dropC<T>(List<T> list) {
  List<T> next(int length) {
    return drop(list, length);
  }

  return next;
}

CurryFn<List<T>, List<T>> dropCR<T>(int length) {
  List<T> next(List<T> list) {
    return drop(list, length);
  }

  return next;
}
