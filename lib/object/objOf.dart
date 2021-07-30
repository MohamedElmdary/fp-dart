import 'package:fp/types/curryFn.dart';

Map<K, V> objOf<V, K>(K key, V value) {
  return {key: value};
}

CurryFn<V, Map<K, V>> objOfC<V, K>(K key) {
  Map<K, V> next(V value) {
    return objOf(key, value);
  }

  return next;
}

CurryFn<K, Map<K, V>> objOfCR<V, K>(V value) {
  Map<K, V> next(K key) {
    return objOf(key, value);
  }

  return next;
}
