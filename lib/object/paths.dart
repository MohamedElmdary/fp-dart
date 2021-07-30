import 'package:fp/curry/curry2.dart';
import 'package:fp/function/function.dart';
import 'package:fp/list/map.dart';
import 'package:fp/object/path.dart';

List paths(List<List<dynamic>> pathList, Map object) {
  return composeC(map(pathList, pathC))(object);
}

final pathsC = curry2(paths);
final pathsCR = curry2R(paths);
