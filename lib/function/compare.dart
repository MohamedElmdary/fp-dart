import 'package:fp/object/prop.dart';

abstract class Comparator {
  bool boolC(bool x, bool y) {
    return numC(x ? 1 : 0, y ? 1 : 0);
  }

  bool numC(num x, num y);
  bool stringC(String x, String y);
  bool listC(dynamic x, dynamic y);
  bool mapC(Map x, Map y);
}

bool Function(dynamic, dynamic) compare(Comparator c) {
  bool next(dynamic x, dynamic y) {
    if (x.runtimeType != y.runtimeType) {
      throw Exception('`gt` Expected the same type to be compared.');
    }

    if (x is num) {
      return c.numC(x, y);
    }

    if (x is bool) {
      return c.boolC(x, y);
    }

    if (x is String) {
      return c.stringC(x, y);
    }

    if (x is List || x is Set) {
      return c.listC(x, y);
    }

    if (x is Map) {
      return c.mapC(x, y);
    }

    if (x is ItoMap) {
      return next(x.toMap(), y.toMap());
    }

    throw Exception('unexpected type ${x.runtimeType}.');
  }

  return next;
}
