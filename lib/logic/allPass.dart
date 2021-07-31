import 'package:fp/list/list.dart';
import 'package:fp/types/curryFn.dart';

bool allPass<T>(List<bool Function(T)> fns, List<T> list) {
  int i = -1;
  while (++i < fns.length) {
    if (!all(fns[i], list)) {
      return false;
    }
  }

  return true;
}

CurryFn<List<T>, bool> allPassC<T>(List<bool Function(T)> fns) {
  bool next(List<T> list) {
    return allPass(fns, list);
  }

  return next;
}

CurryFn<List<bool Function(T)>, bool> allPassCR<T>(List<T> list) {
  bool next(List<bool Function(T)> fns) {
    return allPass(fns, list);
  }

  return next;
}
