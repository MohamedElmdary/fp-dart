import 'package:fp/types/curryFn.dart';

Map<K, V> assoc<K, V>(K key, V value, Map<K, V> object) {
  final Map<K, V> res = {};

  object.keys.forEach((key) {
    res[key] = object[key]!;
  });

  res[key] = value;
  return res;
}

Curry2Fn<V, Map<K, V>, Map<K, V>> assocC<K, V>(K key) {
  CurryFn<Map<K, V>, Map<K, V>> next(V value) {
    Map<K, V> next(Map<K, V> object) {
      return assoc(key, value, object);
    }

    return next;
  }

  return next;
}

Curry2Fn<V, K, Map<K, V>> assocCR<K, V>(Map<K, V> object) {
  CurryFn<K, Map<K, V>> next(V value) {
    Map<K, V> next(K key) {
      return assoc(key, value, object);
    }

    return next;
  }

  return next;
}
