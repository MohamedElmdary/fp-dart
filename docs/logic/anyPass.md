# anyPass

```dart
bool anyPass<T>(List<bool Function(T)> predicates, List<T> list)
```

Takes a list of predicates and returns a predicate that returns true for a given list of arguments if at least one of the provided predicates is satisfied by those arguments.

```dart
final list = [
      {'value': 5},
      {'value': 6}
    ];

bool f(Map x) => x['value'] == 5.5;
bool t(Map x) => x['value'] != 10;

anyPass([t], list); // true
anyPass([f], list); // false
anyPass([t, f], list); // true
```
