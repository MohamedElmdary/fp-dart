import 'package:fp/fp.dart';
import 'package:fp/function/copy.dart';
import 'package:fp/list/list.dart';
import 'package:fp/object/object.dart';

Map dissocPath(List pathList, dynamic object) {
  dynamic next(dynamic map, int i) {
    if (i + 1 == pathList.length) {
      if (map is List) {
        return removeAt(pathList[i], map);
      }
      return dissoc(pathList[i], map);
    }

    dynamic k = pathList[i];
    if (k is int && k < 0) {
      k = map.length + k;
    }

    final _map = copy(map);
    _map[k] = next(_map[k], i + 1);

    return _map;
  }

  return next(object, 0);
}

final dissocPathC = curry2(dissocPath);
final dissocPathCR = curry2R(dissocPath);
