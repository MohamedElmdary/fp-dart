import 'package:fp/function/function.dart';
import 'package:fp/curry/curry3.dart';

dynamic set(List pathList, dynamic value, dynamic object) {
  dynamic next(dynamic map, int i) {
    if (i == pathList.length) {
      return value;
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

final setC = curry3(set);
final setCR = curry3R(set);
