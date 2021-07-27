import 'package:fp/curry/curry3.dart';

bool eqProps(dynamic key, Map obj1, Map obj2) {
  if (!obj1.containsKey(key) || !obj2.containsKey(key)) {
    return false;
  }

  return obj1[key] == obj2[key];
}

final eqPropsC = curry3(eqProps);
final eqPropsCR = curry3R(eqProps);
