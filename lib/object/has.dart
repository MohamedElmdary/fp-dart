import 'package:fp/curry/curry2.dart';

bool has(String key, Map obj) {
  return obj.containsKey(key);
}

final hasC = curry2(has);
final hasCR = curry2R(has);
