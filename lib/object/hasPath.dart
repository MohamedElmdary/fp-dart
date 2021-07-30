import 'package:fp/curry/curry2.dart';

bool hasPath(List<String> pathList, Map map) {
  bool next(dynamic obj, int i) {
    if (i == pathList.length) {
      return true;
    }

    final key = pathList[i];
    if (obj is Map && obj.containsKey(key)) {
      return next(obj[key], i + 1);
    }

    return false;
  }

  return next(map, 0);
}

final hasPathC = curry2(hasPath);
final hasPathCR = curry2R(hasPath);
