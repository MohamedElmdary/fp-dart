int ascend<T>(Function selector, T v1, T v2) {
  return selector(v1) > selector(v2) ? 1 : -1;
}

int Function(T v1, T v2) ascendC<T>(Function selector) {
  int next(T v1, T v2) {
    return ascend(selector, v1, v2);
  }

  return next;
}
