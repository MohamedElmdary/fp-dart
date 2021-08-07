# allPass

```dart
bool allPass<T>(List<bool Function(T)> predicates, List<T> list)
```

Takes a list of predicates and returns a predicate that returns true for a given list of arguments if every one of the provided predicates is satisfied by those arguments.

```dart
final list = [
    {'value': 5},
    {'value': 6}
];
bool f(Map x) => x['value'] == 5;
bool t(Map x) => x['value'] != 10;

allPass([t], list); // true
allPass([t, f], list); // false
```
