Map<T, List<int>> invertList<T>(List<T> list) {
  final Map<T, List<int>> res = {};
  int i = -1;
  while (++i < list.length) {
    if (res.containsKey(list[i])) {
      res[list[i]]!.add(i);
    } else {
      res[list[i]] = [i];
    }
  }
  return res;
}
