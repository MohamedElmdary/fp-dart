import 'package:fp/curry/curry2.dart';
import 'package:fp/relation/relation.dart';

dynamic defaultTo(dynamic defaultValue, dynamic maybeFalsy) {
  if (isNan(maybeFalsy) || maybeFalsy == null) {
    return defaultValue;
  }

  return maybeFalsy;
}

final defaultToC = curry2(defaultTo);
final defaultToCR = curry2R(defaultTo);
