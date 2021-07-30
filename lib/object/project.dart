import 'package:fp/curry/curry2.dart';
import 'package:fp/list/map.dart';
import 'package:fp/object/object.dart';

List<Map> project(List<String> picks, List<Map> list) {
  return map(list, pickC(picks));
}

final projectC = curry2(project);
final projectCR = curry2R(project);
