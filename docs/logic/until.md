# until

```dart
R until<T, R>(
  bool Function(T) predicate,
  R Function(dynamic) transformer,
  T value,
)
```

Takes a predicate, a transformation function, and an initial value, and returns a value of the same type as the initial value. It does so by applying the transformation until the predicate is satisfied, at which point it returns the satisfactory value.

```dart
final gt100 = (int v) => v > 100;
final x2 = (v) => v * 2;
const value = 1;

until(gt100, x2, value); // 128
```
