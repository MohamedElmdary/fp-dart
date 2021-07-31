import 'package:fp/curry/curry3.dart';
import 'package:fp/object/object.dart';

bool pathEq(List pathList, dynamic value, dynamic object) {
  return value == path(pathList, object);
}

final pathEqC = curry3(pathEq);
final pathEqCR = curry3R(pathEq);
