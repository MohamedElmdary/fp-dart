import 'package:fp/curry/curry2.dart';

dynamic path(List<dynamic> pathList, Map object) {
  if (pathList.length == 0) {
    return object;
  }

  dynamic obj = object;

  int i = -1;
  while (++i < pathList.length) {
    dynamic key = pathList[i];
    if (key is int && (obj is String || obj is List)) {
      if (key < 0) {
        key = obj.length + key;
      }

      if (key >= 0 && key < obj.length) {
        obj = obj[key];
      }

      continue;
    }

    if (obj is Map && obj.containsKey(key)) {
      obj = obj[key];
      continue;
    }

    throw Exception(
      'Expected String, Map or List but got ${obj.runtimeType} with key of type ${key.runtimeType}',
    );
  }

  return obj;
}

final pathC = curry2(path);
final pathCR = curry2R(path);
