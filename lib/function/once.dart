R Function(T) once<T, R>(R Function(T) fn) {
  R? res;

  R next(T arg) {
    if (res != null) {
      return res!;
    }

    res = fn(arg);
    return res!;
  }

  return next;
}
