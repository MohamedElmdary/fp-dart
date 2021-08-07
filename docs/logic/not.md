# not

```dart
bool not(Function predicate, [dynamic value])
```

A function that takes predicate (function returns bool) and `dynamic?` value and returns back the complement value (true ? false : true).

```dart
final isFive = (v) => v == 5;

not(isFive, 5); // false
not(isFive, 0); // true
```
