R Function(T) memoize<T, R>(R Function(T) fn) {
  final Map<T, R> cache = new Map<T, R>();

  R next(T arg) {
    if (cache.containsKey(arg)) {
      return cache[arg] as R;
    }

    final R res = fn(arg);
    cache[arg] = res;
    return res;
  }

  return next;
}
