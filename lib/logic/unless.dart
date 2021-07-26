import 'package:fp/curry/curry3.dart';

dynamic unless(bool Function(dynamic) predicate, Function whenFalseFn, value) {
  if (!predicate(value)) {
    return whenFalseFn(value);
  }

  return value;
}

final unlessC = curry3(unless);
final unlessCR = curry3R(unless);
