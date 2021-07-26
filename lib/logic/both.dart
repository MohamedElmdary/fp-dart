import 'package:fp/logic/logic.dart';
import 'package:fp/types/curryFn.dart';

bool both<T>(List<bool Function(T)> fns, T value) {
  if (fns.length < 2) {
    throw Exception('Expected at least 2 functions but got ${fns.length}');
  }

  return and(fns[0](value), fns[1](value));
}

CurryFn<T, bool> bothC<T>(List<bool Function(T)> fns) {
  bool next(T value) {
    return both(fns, value);
  }

  return next;
}

CurryFn<List<bool Function(T)>, bool> bothCR<T>(T value) {
  bool next(List<bool Function(T)> fns) {
    return both(fns, value);
  }

  return next;
}
