import 'package:fp/curry/curry2.dart';
import 'package:fp/object/prop.dart';

bool gt(dynamic maybeGreat, dynamic maybeLess) {
  if (maybeGreat.runtimeType != maybeLess.runtimeType) {
    throw Exception('`gt` Expected the same type to be compared.');
  }

  if (maybeGreat == maybeLess) {
    return false;
  }

  if (maybeGreat is num) {
    return maybeGreat > maybeLess;
  }

  if (maybeGreat is bool) {
    final x = maybeGreat ? 1 : 0;
    final y = maybeLess ? 1 : 0;
    return x > y;
  }

  if (maybeGreat is String) {
    return maybeGreat.compareTo(maybeLess) == 1;
  }

  if (maybeGreat is List || maybeGreat is Set) {
    return maybeGreat.length > maybeLess.length;
  }

  if (maybeGreat is Map) {
    return maybeGreat.keys.length > maybeLess.keys.length;
  }

  if (maybeGreat is ItoMap) {
    return gt(maybeGreat.toMap(), maybeLess.toMap());
  }

  throw Exception('unexpected type ${maybeGreat.runtimeType}.');
}

final gtC = curry2(gt);
final gtCR = curry2R(gt);
