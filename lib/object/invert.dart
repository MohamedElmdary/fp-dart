Map<V, List<K>> invert<K, V>(Map<K, V> object) {
  final Map<V, List<K>> res = {};

  object.forEach((key, value) {
    if (res.containsKey(value)) {
      res[value]!.add(key);
    } else {
      res[value] = [key];
    }
  });

  return res;
}
