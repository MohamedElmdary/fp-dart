import 'package:fp/types/curryFn.dart';

void forEach<T>(List<T> list, void Function(T, int, List<T>) callback) {
  int i = -1;
  while (++i < list.length) {
    callback(list[i], i, list);
  }
}

CurryFn<void Function(T, int, List<T>), void> forEachC<T>(List<T> list) {
  void next(void Function(T, int, List<T>) callback) {
    return forEach(list, callback);
  }

  return next;
}

CurryFn<List<T>, void> forEachCR<T>(void Function(T, int, List<T>) callback) {
  void next(List<T> list) {
    return forEach(list, callback);
  }

  return next;
}
