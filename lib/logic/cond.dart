import 'package:fp/types/curryFn.dart';

R? cond<T, R>(List<List<dynamic Function(T)>> conditions, T value) {
  int i = -1;
  while (++i < conditions.length) {
    final cnd = conditions[i];
    if (cnd.length < 2) {
      throw Exception(
        'Expected at least 2 functions one for `condition` & one for `returned Value`',
      );
    }

    if (cnd[0](value)) {
      return cnd[1](value);
    }
  }
  return null;
}

CurryFn<T, R?> condC<T, R>(List<List<dynamic Function(T)>> conditions) {
  R? next(T value) {
    return cond(conditions, value);
  }

  return next;
}

CurryFn<List<List<dynamic Function(T)>>, R?> condCR<T, R>(T value) {
  R? next(List<List<dynamic Function(T)>> conditions) {
    return cond(conditions, value);
  }

  return next;
}
