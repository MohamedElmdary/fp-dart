import 'package:fp/function/function.dart';

Map deepMerge(Map object, Map mergeFrom) {
  dynamic next(Map obj, Map from) {
    final res = copy(obj);

    res.keys.forEach((key) {
      if (from.containsKey(key)) {
        res[key] = res[key] is Map ? next(res[key], from[key]) : from[key];
      }
    });

    return res;
  }

  return next(object, mergeFrom);
}
