import 'package:fp/list/reduce.dart';
import 'package:fp/types/curryFn.dart';

Map<K, V> countBy<K, V>(K Function(V) toKey, List list) {
  return reduce(
    (Map res, dynamic current) {
      final key = toKey(current);
      res[key] = res.containsKey(key) ? res[key] + 1 : 1;
      return res;
    },
    {},
    list,
  ) as Map<K, V>;
}

CurryFn<List, Map<K, V>> countByC<K, V>(K Function(V) toKey) {
  Map<K, V> next(List list) {
    return countBy(toKey, list);
  }

  return next;
}

CurryFn<K Function(V), Map<K, V>> countByCR<K, V>(List list) {
  Map<K, V> next(K Function(V) toKey) {
    return countBy(toKey, list);
  }

  return next;
}
