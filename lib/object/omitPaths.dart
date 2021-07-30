import 'package:fp/curry/curry2.dart';
import 'package:fp/function/function.dart';
import 'package:fp/list/list.dart';
import 'package:fp/object/omit.dart';

Map omitPaths(List<List<String>> paths, Map obj) {
  return composeC(map(paths, omitC))(obj);
}

final omitPathsC = curry2(omitPaths);
final omitPathsCR = curry2R(omitPaths);
