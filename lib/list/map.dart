import 'package:fp/types/curryFn.dart';

List<R> map<T, R>(List<T> list, R Function(T) mapper) {
  final List<R> res = [];
  int i = -1;
  while (++i < list.length) {
    res.add(mapper(list[i]));
  }
  return res;
}

CurryFn<R Function(T), List<R>> mapC<T, R>(List<T> list) {
  List<R> next(R Function(T) mapper) {
    return map(list, mapper);
  }

  return next;
}

CurryFn<List<T>, List<R>> mapCR<T, R>(R Function(T) mapper) {
  List<R> next(List<T> list) {
    return map(list, mapper);
  }

  return next;
}
