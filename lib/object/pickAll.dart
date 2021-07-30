import 'package:fp/curry/curry2.dart';

Map pickAll(List<String> picks, Map object) {
  final Map res = {};
  int i = -1;
  while (++i < picks.length) {
    final key = picks[i];
    res[key] = object.containsKey(key) ? object[key] : null;
  }
  return res;
}

final pickAllC = curry2(pickAll);
final pickAllCR = curry2R(pickAll);
