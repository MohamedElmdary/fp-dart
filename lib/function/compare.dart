import 'package:fp/object/prop.dart';

abstract class Comparator {
  bool numC(num x, num y);
  bool stringC(String x, String y);
  bool listC(dynamic x, dynamic y);
  bool mapC(Map x, Map y);
  bool boolC(bool x, bool y) {
    return numC(x ? 1 : 0, y ? 1 : 0);
  }
}

bool Function(dynamic, dynamic) compare(Comparator c) {
  bool next(dynamic x, dynamic y) {
    if (x is num && y is num) return c.numC(x, y);
    if (x is bool && y is bool) return c.boolC(x, y);
    if (x is String && y is String) return c.stringC(x, y);
    if (x is Map && y is Map) return c.mapC(x, y);
    if (x is ItoMap && y is ItoMap) return next(x.toMap(), y.toMap());
    if ((x is List && y is List) || (x is Set && y is Set)) {
      return c.listC(x, y);
    }

    throw Exception(
      'Expected matched types but got [${x.runtimeType}, ${y.runtimeType}].',
    );
  }

  return next;
}
