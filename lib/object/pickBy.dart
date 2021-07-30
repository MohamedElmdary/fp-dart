import 'package:fp/curry/curry2.dart';

Map pickBy(bool Function(String) predicate, Map map) {
  final Map res = {};
  map.keys.forEach((key) {
    if (predicate(key)) {
      res[key] = map[key];
    }
  });
  return res;
}

final pickByC = curry2(pickBy);
final pickByCR = curry2R(pickBy);
