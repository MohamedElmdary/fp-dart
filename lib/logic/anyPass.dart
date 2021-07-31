import 'package:fp/list/any.dart';
import 'package:fp/types/curryFn.dart';

bool anyPass<T>(List<bool Function(T)> fns, List<T> list) {
  int i = -1;
  while (++i < fns.length) {
    if (any(list, fns[i])) {
      return true;
    }
  }

  return false;
}

CurryFn<List<T>, bool> anyPassC<T>(List<bool Function(T)> fns) {
  bool next(List<T> list) {
    return anyPass(fns, list);
  }

  return next;
}

CurryFn<List<bool Function(T)>, bool> anyPassCR<T>(List<T> list) {
  bool next(List<bool Function(T)> fns) {
    return anyPass(fns, list);
  }

  return next;
}
