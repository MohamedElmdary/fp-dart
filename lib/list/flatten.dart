List<T> flatten<T>(List<dynamic> list) {
  List<T> res = [];

  void next(List<dynamic> subList) {
    int i = -1;
    while (++i < subList.length) {
      final item = subList[i];
      if (item is List) {
        next(item);
        continue;
      }
      res.add(item);
    }
  }

  next(list);
  return res;
}
