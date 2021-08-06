import 'package:fp/object/keys.dart' as fp;

Map<Key, Value> mergeAll<Key, Value>(List<Map<Key, Value>> list) {
  final Map<Key, Value> res = {};

  int i = -1;
  while (++i < list.length) {
    final Map<Key, Value> item = list[i];
    final keys = fp.keys(item);

    int j = -1;
    while (++j < keys.length) {
      final k = keys[j];
      res[k] = item[k] as Value;
    }
  }
  return res;
}
