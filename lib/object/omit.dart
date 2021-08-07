import 'package:fp/curry/curry2.dart';
import 'package:fp/object/keys.dart';

Map omit(Set<String> keysToOmit, Map map) {
  final Map res = {};
  final ks = keys(map);

  int i = -1;
  while (++i < ks.length) {
    final k = ks[i];

    if (keysToOmit.contains(k)) {
      continue;
    }

    res[k] = map[k];
  }

  return res;
}

final omitC = curry2(omit);
final omitCR = curry2R(omit);
