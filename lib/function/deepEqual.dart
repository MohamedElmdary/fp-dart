import 'package:fp/curry/curry2.dart';
import 'package:fp/object/keys.dart';
import 'package:fp/object/prop.dart';
import 'package:fp/relation/relation.dart';

bool deepEqual(dynamic x, dynamic y) {
  if (x == y || (isNan(x) && isNan(y))) return true;

  if (x is Map && y is Map) return _deepEqualMap(x, y);
  if (x is ItoMap && y is ItoMap) return _deepEqualMap(x.toMap(), y.toMap());
  if ((x is Set && y is Set) || (x is List && y is List)) {
    return _deepEqualList(x.toList(), y.toList());
  }

  return false;
}

final deepEqualC = curry2(deepEqual);

bool _deepEqualList(List l1, List l2) {
  if (l1.length != l2.length) return false;

  int i = -1;
  while (++i < l1.length) {
    int j = -1;
    while (++j < l2.length) {
      if (deepEqual(l1[i], l2[j])) {
        l2.removeAt(j);
        break;
      }
    }
  }

  return l2.length == 0;
}

bool _deepEqualMap(Map m1, Map m2) {
  if (m1.keys.length != m2.keys.length) return false;

  final ks = keys(m1);

  int i = -1;
  while (++i < ks.length) {
    final k = ks[i];

    if (!m2.containsKey(k) || !deepEqual(m1[k], m2[k])) return false;

    m2.remove(k);
  }

  return m2.keys.length == 0;
}
