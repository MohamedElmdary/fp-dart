import 'package:fp/types/curryFn.dart';

List<T> append<T>(List<T> list, List<T> itemsToAppend) {
  final List<T> res = list.sublist(0);
  res.addAll(itemsToAppend);
  return res;
}

CurryFn<List<T>, List<T>> appendC<T>(List<T> list) {
  List<T> next(List<T> itemsToAppend) {
    return append(list, itemsToAppend);
  }

  return next;
}

CurryFn<List<T>, List<T>> appendCR<T>(List<T> itemsToAppend) {
  List<T> next(List<T> list) {
    return append(list, itemsToAppend);
  }

  return next;
}
