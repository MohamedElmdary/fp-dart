import 'package:fp/function/function.dart';
import 'package:fp/curry/curry3.dart';

dynamic set(List pathList, dynamic value, dynamic object) {
  dynamic next(dynamic map, int i) {
    dynamic k = pathList[i];
    if (k is int && k < 0) {
      k = map.length + k;
    }

    final _map = copy(map);
    _map[k] = ++i == pathList.length ? value : next(_map[k], i);

    return _map;
  }

  return next(object, 0);
}

final setC = curry3(set);
final setCR = curry3R(set);
