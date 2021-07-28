import 'package:fp/object/object.dart';

T copy<T>(T value) {
  if (value is Map) {
    return clone(value) as T;
  }

  if (value is List) {
    return [...value] as T;
  }

  if (value is Set) {
    return value.toSet() as T;
  }

  return value;
}
