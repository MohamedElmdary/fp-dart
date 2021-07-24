import 'package:fp/types/curryFn.dart';

List<T> dropLast<T>(List<T> list, int length) {
  if (length >= list.length) {
    return [];
  }
  return list.sublist(0, length);
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
