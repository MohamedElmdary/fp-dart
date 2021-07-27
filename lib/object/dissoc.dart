import 'package:fp/curry/curry2.dart';
import 'package:fp/function/copy.dart';

Map dissoc(String key, Map map) {
  final res = copy(map);
  res.remove(key);

  return res;
}

final dissocC = curry2(dissoc);
final dissocCR = curry2R(dissoc);
