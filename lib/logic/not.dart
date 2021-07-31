import 'package:fp/curry/curry2.dart';

bool not(Function predicate, [dynamic value]) {
  return !predicate(value);
}

final notC = curry2(not);
final notCR = curry2R(not);
