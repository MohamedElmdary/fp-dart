import 'package:fp/curry/curry3.dart';
import 'package:fp/object/prop.dart';

mixin Comparator {
  bool numC(num x, num y);
  bool boolC(bool x, bool y);
  bool stringC(String x, String y);
  bool listC(dynamic x, dynamic y);
  bool mapC(Map x, Map y);
}

bool compare(
  Comparator c,
  dynamic maybeGreat,
  dynamic maybeLess,
) {
  if (maybeGreat.runtimeType != maybeLess.runtimeType) {
    throw Exception('`gt` Expected the same type to be compared.');
  }

  if (maybeGreat is num) {
    return c.numC(maybeGreat, maybeLess);
  }

  if (maybeGreat is bool) {
    return c.boolC(maybeGreat, maybeLess);
  }

  if (maybeGreat is String) {
    return c.stringC(maybeGreat, maybeLess);
  }

  if (maybeGreat is List || maybeGreat is Set) {
    return c.listC(maybeGreat, maybeLess);
  }

  if (maybeGreat is Map) {
    return c.mapC(maybeGreat, maybeLess);
  }

  if (maybeGreat is ItoMap) {
    return compare(c, maybeGreat.toMap(), maybeLess.toMap());
  }

  throw Exception('unexpected type ${maybeGreat.runtimeType}.');
}

final compareC = curry3(compare);
final compareCR = curry3R(compare);
