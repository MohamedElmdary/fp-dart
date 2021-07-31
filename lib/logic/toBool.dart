import 'package:fp/relation/relation.dart';

bool toBool(dynamic value) {
  if (value is bool) {
    return value;
  }

  final res = (value == null) ||
      (isNan(value)) ||
      (value is String && value.length == 0);

  return !res;
}
