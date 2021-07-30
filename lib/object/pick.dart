import 'package:fp/curry/curry2.dart';

Map pick(List<String> picks, Map object) {
  final Map res = {};
  int i = -1;
  while (++i < picks.length) {
    final key = picks[i];
    if (object.containsKey(key)) {
      res[key] = object[key];
    }
  }
  return res;
}

final pickC = curry2(pick);
final pickCR = curry2R(pick);
