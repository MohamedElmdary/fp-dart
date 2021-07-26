import 'package:fp/relation/relation.dart';

/// false = String '' || false || null || nan
bool toBool(dynamic value) {
  final res = (value == false) ||
      (value == null) ||
      (isNan(value)) ||
      (value is String && value.length == 0);

  return !res;
}
