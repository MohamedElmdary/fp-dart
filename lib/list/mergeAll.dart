Map<Key, Value> mergeAll<Key, Value>(List<Map<Key, Value>> list) {
  final Map<Key, Value> res = {};

  int i = -1;
  while (++i < list.length) {
    final Map<Key, Value> item = list[i];
    final keys = item.keys.toList();

    int j = -1;
    while (++j < keys.length) {
      res[keys[j]] = item[keys[i]] as Value;
    }
  }
  return res;
}
