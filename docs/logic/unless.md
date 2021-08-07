# unless

```dart
dynamic unless(bool Function(dynamic) predicate, Function whenFalseFn, value)
```

Tests the final argument by passing it to the given predicate function. If the predicate is not satisfied, the function will return the result of calling the whenFalseFn function with the same argument. If the predicate is satisfied, the argument is returned as is.

```dart
final isNil = (v) => v == null;
final inc = (v) => v + 1;

unless(isNil, inc, null); // null
unless(isNil, inc, 1); // 2
```
