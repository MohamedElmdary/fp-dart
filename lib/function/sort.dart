import 'package:fp/list/copyList.dart';
import 'package:fp/types/curryFn.dart';

List<T> sort<T>(int Function(T, T) sorter, List<T> list) {
  final List<T> res = copyList(list);
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
