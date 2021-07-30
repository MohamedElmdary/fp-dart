import 'package:fp/curry/curry2.dart';
import 'package:fp/list/map.dart';
import 'package:fp/object/prop.dart';

List props(List<String> propList, Map object) {
  return map(propList, propCR(object));
}

final propsC = curry2(props);
final propsCR = curry2R(props);
