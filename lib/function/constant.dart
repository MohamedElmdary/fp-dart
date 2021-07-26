import 'package:fp/types/types.dart';
import 'package:fp/utils/utils.dart';

IgnoreArgs<T> constant<T>(T value) {
  T next() {
    return value;
  }

  return ignoredNext<T>(next);
}

final always = constant;
final F = constant(false);
final T = constant(true);
