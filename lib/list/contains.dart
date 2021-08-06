import 'package:fp/relation/equals.dart';
import 'package:fp/curry/curry2.dart';
import 'list.dart';

bool contains(List list, dynamic item) {
  return any(list, equalsC(item));
}

final containsC = curry2(contains);
final containsCR = curry2R(contains);
