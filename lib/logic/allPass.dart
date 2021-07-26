import 'package:fp/function/function.dart';
import 'package:fp/list/list.dart';
import 'package:fp/types/curryFn.dart';

bool allPass<T>(List<bool Function(T)> fns, List<T> list) {
  final predicate = composeC<T, bool>(fns);
  return all(predicate, list);
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
