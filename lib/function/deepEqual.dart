import 'package:fp/curry/curry2.dart';
import 'package:fp/object/keys.dart';
import 'package:fp/object/prop.dart';

bool deepEqual(dynamic x, dynamic y) {
  if (x == y) return true;

  if (x is Map) return _deepEqualMap(x, y);
  if (x is Set || x is List) return _deepEqualList(x.toList(), y.toList());
  if (x is ItoMap) return _deepEqualMap(x.toMap(), y.toMap());

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
