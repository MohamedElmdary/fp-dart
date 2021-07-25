import 'package:fp/types/curryFn.dart';

List<T> intersperse<T>(T separator, List<T> list) {
  final List<T> res = [];
  int i = -1;
  while (++i < list.length) {
    res.add(list[i]);

    if (i + 1 == list.length) {
      break;
    }

    res.add(separator);
  }
  return res;
}

CurryFn<List<T>, List<T>> intersperseC<T>(T separator) {
  List<T> next(List<T> list) {
    return intersperse(separator, list);
  }

  return next;
}

CurryFn<T, List<T>> intersperseCR<T>(List<T> list) {
  List<T> next(T separator) {
    return intersperse(separator, list);
  }

  return next;
}
