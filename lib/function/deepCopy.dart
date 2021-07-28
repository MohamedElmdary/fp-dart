import 'package:fp/function/function.dart';
import 'package:fp/list/list.dart';

dynamic deepCopy(dynamic object) {
  if (object is Map) {
    final res = {};

    object.keys.forEach((key) {
      res[key] = deepCopy(object[key]);
    });

    return res;
  }

  if (object is List) {
    return map(object, deepCopy);
  }

  if (object is Set) {
    final res = new Set();

    object.forEach((item) {
      res.add(deepCopy(item));
    });

    return res;
  }

  return object;
}
