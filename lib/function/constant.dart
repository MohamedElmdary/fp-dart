T Function() constant<T>(T value) {
  T next() {
    return value;
  }

  return next;
}

final always = constant;
final F = constant(false);
final T = constant(true);
