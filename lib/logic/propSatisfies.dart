import 'package:fp/curry/curry3.dart';
import 'package:fp/object/object.dart';

bool propSatisfies(
  bool Function(dynamic) predicate,
  List<dynamic> pathList,
  dynamic object,
) {
  final item = path(pathList, object);
  return predicate(item);
}

final propSatisfiesC = curry3(propSatisfies);
final propSatisfiesCR = curry3R(propSatisfies);
