Map<K, V> clone<K, V>(Map<K, V> map) {
  final Map<K, V> res = {};

  map.keys.forEach((key) {
    res[key] = map[key]!;
  });

  return res;
}
