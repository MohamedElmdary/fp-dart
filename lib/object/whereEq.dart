import 'package:fp/curry/curry2.dart';
import 'package:fp/object/where.dart';
import 'package:fp/relation/equals.dart';

/// convert eqObject into predicate
dynamic _toPredicate(dynamic obj) {
  if (obj is Map) {
    final Map res = {};
    obj.forEach((key, value) {
      res[key] = _toPredicate(value);
    });
    return res;
  }

  return equalsC(obj);
}

bool whereEq(Map eqObject, Map object) {
  return where(_toPredicate(eqObject), object);
}

final whereEqC = curry2(whereEq);
final whereEqCR = curry2R(whereEq);
