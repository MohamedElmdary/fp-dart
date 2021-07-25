import 'package:fp/types/curryFn.dart';

List<T> insertAll<T>(int index, List<T> itemsToAdd, List<T> list) {
  final int idx = index < 0
      ? 0
      : index >= list.length
          ? list.length - 1
          : index;

  final List<T> res = [];
  int i = -1;

  while (++i < list.length) {
    if (i == idx) {
      res.addAll(itemsToAdd);
    }
    res.add(list[i]);
  }

  return res;
}

Curry2Fn<List<T>, List<T>, List<T>> insertAllC<T>(int index) {
  CurryFn<List<T>, List<T>> next(List<T> itemsToAdd) {
    List<T> next(List<T> list) {
      return insertAll(index, itemsToAdd, list);
    }

    return next;
  }

  return next;
}

Curry2Fn<List<T>, int, List<T>> insertAllCR<T>(List<T> list) {
  CurryFn<int, List<T>> next(List<T> itemsToAdd) {
    List<T> next(int index) {
      return insertAll(index, itemsToAdd, list);
    }

    return next;
  }

  return next;
}
