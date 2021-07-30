import 'package:fp/curry/curry2.dart';

Map mapObjIndexed(
  dynamic Function(int index, dynamic key, dynamic value) fn,
  Map object,
) {
  final Map res = {};
  int i = 0;

  object.forEach((key, value) {
    res[key] = fn(i++, key, value);
  });

  return res;
}

final mapObjIndexedC = curry2(mapObjIndexed);
final mapObjIndexedCR = curry2R(mapObjIndexed);
