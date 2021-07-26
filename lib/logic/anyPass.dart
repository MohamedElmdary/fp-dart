import 'package:fp/function/compose.dart';
import 'package:fp/list/any.dart';
import 'package:fp/types/curryFn.dart';

bool anyPass<T>(List<bool Function(T)> fns, List<T> list) {
  final predicate = composeC<T, bool>(fns);
  return any(list, predicate);
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
