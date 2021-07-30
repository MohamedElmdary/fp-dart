import 'package:fp/object/object.dart';

bool where(Map predicate, Map object) {
  bool next(dynamic fns, dynamic src) {
    final ks = keys(fns);
    int i = -1;
    while (++i < ks.length) {
      final key = ks[i];

      if (!src.containsKey(key)) {
        return false;
      }

      final maybeFn = fns[key];
      final arg = src[key];

      if (maybeFn is Function) {
        if (maybeFn(arg)) {
          continue;
        }
        return false;
      }

      if (!next(maybeFn, arg)) {
        return false;
      }
    }

    return true;
  }

  return next(predicate, object);
}
