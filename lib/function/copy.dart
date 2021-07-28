import 'package:fp/list/copyList.dart';
import 'package:fp/object/copyMap.dart';
import 'package:fp/object/copySet.dart';

dynamic copy(dynamic value) {
  if (value is Map) {
    return copyMap(value);
  }

  if (value is List) {
    return copyList(value);
  }

  if (value is Set) {
    return copySet(value);
  }

  return value;
}
