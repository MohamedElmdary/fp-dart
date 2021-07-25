T max<T extends num>(List<T> list) {
  T next(T max, int i) {
    if (i == list.length) {
      return max;
    }
    final res = list[i] > max ? list[i] : max;
    return next(res, ++i);
  }

  return next(double.negativeInfinity as T, 0);
}
