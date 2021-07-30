import 'package:fp/curry/curry2.dart';
import 'package:fp/object/keys.dart';
import 'package:fp/object/prop.dart';

bool deepEqual(dynamic x, dynamic y) {
  if (x == y) {
    return true;
  }

  if (x.runtimeType != y.runtimeType) {
    return false;
  }

  // checking for x should be enough for x and y

  if (x is List) {
    if (x.length != y.length) {
      return false;
    }

    int i = -1;
    while (++i < x.length) {
      int j = -1;
      while (++j < x.length) {
        if (deepEqual(x[i], y[j])) {
          return true;
        }
      }
    }

    return false;
  }

  if (x is Map) {
    final xKeys = keys(x);
    final yKeys = keys(y);

    if (xKeys.length != yKeys.length) {
      return false;
    }

    int i = -1;
    while (++i < xKeys.length) {
      if (!y.containsKey(xKeys[i]) || !deepEqual(x[xKeys[i]], y[xKeys[i]])) {
        return false;
      }
    }

    return true;
  }

  if (x is Set) {
    if (x.length != y.length) {
      return false;
    }

    return deepEqual(x.toList(), y.toList());
  }

  if (x is ItoMap && y is ItoMap) {
    return deepEqual(x.toMap(), y.toMap());
  }

  throw Exception(
    'Unexpected types passed to deepEqual [`${x.runtimeType}`, `${y.runtimeType}`].',
  );
}

final deepEqualC = curry2(deepEqual);
