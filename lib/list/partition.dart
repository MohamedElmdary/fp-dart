import 'package:fp/types/curryFn.dart';

List<List<T>> partition<T>(bool Function(T) predicate, List<T> list) {
  final List<T> trueList = [];
  final List<T> falseList = [];
  int i = -1;
  while (++i < list.length) {
    final item = list[i];
    if (predicate(item)) {
      trueList.add(item);
      continue;
    }
    falseList.add(item);
  }
  return [trueList, falseList];
}

CurryFn<List<T>, List<List<T>>> partitionC<T>(bool Function(T) predicate) {
  List<List<T>> next(List<T> list) {
    return partition(predicate, list);
  }

  return next;
}

CurryFn<bool Function(T), List<List<T>>> partitionCR<T>(List<T> list) {
  List<List<T>> next(bool Function(T) predicate) {
    return partition(predicate, list);
  }

  return next;
}
