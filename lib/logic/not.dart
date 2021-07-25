bool Function(T) not<T>(bool Function(T) predicate) {
  bool next(T arg) {
    return !predicate(arg);
  }

  return next;
}
