T min<T extends num>(List<T> list) {
  T next(T min, int i) {
    if (i == list.length) {
      return min;
    }
    final res = min > list[i] ? list[i] : min;
    return next(res, ++i);
  }

  return next(double.infinity as T, 0);
}
