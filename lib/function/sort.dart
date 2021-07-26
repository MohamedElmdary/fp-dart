import 'package:fp/types/curryFn.dart';

int ascend<T>(Function selector, T v1, T v2) {
  return selector(v1) > selector(v2) ? 1 : -1;
}

int Function(T v1, T v2) ascendC<T>(Function selector) {
  int next(T v1, T v2) {
    return ascend(selector, v1, v2);
  }

  return next;
}

int descend<T>(Function selector, T v1, T v2) {
  return selector(v1) < selector(v2) ? 1 : -1;
}

int Function(T v1, T v2) descendC<T>(Function selector) {
  int next(T v1, T v2) {
    return descend(selector, v1, v2);
  }

  return next;
}

List<T> sort<T>(int Function(T, T) sorter, List<T> list) {
  final List<T> res = list.sublist(0);
  res.sort(sorter);
  return res;
}

CurryFn<List<T>, List<T>> sortC<T>(int Function(T, T) sorter) {
  List<T> next(List<T> list) {
    return sort(sorter, list);
  }

  return next;
}

CurryFn<int Function(T, T), List<T>> sortCR<T>(List<T> list) {
  List<T> next(int Function(T, T) sorter) {
    return sort(sorter, list);
  }

  return next;
}
