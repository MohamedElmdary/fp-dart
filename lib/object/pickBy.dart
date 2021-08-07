import 'package:fp/curry/curry2.dart';

Map pickBy(bool Function(dynamic, dynamic) predicate, Map map) {
  final Map res = {};
  map.keys.forEach((key) {
    if (predicate(map[key], key)) {
      res[key] = map[key];
    }
  });
  return res;
}

final pickByC = curry2(pickBy);
final pickByCR = curry2R(pickBy);
