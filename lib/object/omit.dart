import 'package:fp/curry/curry2.dart';

Map omit(List<String> path, Map map) {
  Map next(Map obj, int i) {
    final Map res = {};
    final k = path[i];

    obj.forEach((key, item) {
      if (key == k) {
        if (item is Map) {
          res[key] = next(item, i + 1);
        }

        return;
      }

      res[key] = item;
    });

    return res;
  }

  return next(map, 0);
}

final omitC = curry2(omit);
final omitCR = curry2R(omit);
