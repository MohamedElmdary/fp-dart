import 'package:fp/types/curryFn.dart';

List<T> drop<T>(List<T> list, int length) {
  if (length >= list.length) {
    return [];
  }
  return list.sublist(length);
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
