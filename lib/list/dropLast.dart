import 'package:fp/types/curryFn.dart';

List<T> dropLast<T>(List<T> list, int length) {
  final List<T> res = [];

  if (length >= list.length) {
    return res;
  }

  final _l = list.length - length;
  int i = -1;
  while (++i < _l) {
    res.add(list[i]);
  }
  return res;
}

CurryFn<int, List<T>> dropLastC<T>(List<T> list) {
  List<T> next(int length) {
    return dropLast(list, length);
  }

  return next;
}

CurryFn<List<T>, List<T>> dropLastCR<T>(int length) {
  List<T> next(List<T> list) {
    return dropLast(list, length);
  }

  return next;
}
