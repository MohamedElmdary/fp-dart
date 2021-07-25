Map<T, R> fromPairs<T, R>(List<List<dynamic>> parts) {
  final Map<T, R> res = {};
  int i = -1;
  while (++i < parts.length) {
    final List<dynamic> part = parts[i];
    if (part.length != 2) {
      continue;
    }
    res[part[0]] = part[1];
  }
  return res;
}
