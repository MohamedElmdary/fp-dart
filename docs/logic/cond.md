# cond

```dart
R? cond<T, R>(List<List<dynamic Function(T)>> conditions, T value)
```

A function that takes a list of conditions `List<dynamic Function(T)>` and value in domain of conditions and returns the first condition that returns true. otherwise it returns null if no conditions returned true.

```dart
const List<List<dynamic Function(double)>> empty = [];
final conditions = [
    [
        (double v) => v == 0,
        (double t) => 'water freezes at 0°C',
    ],
    [
        (double v) => v == 100,
        (double t) => 'water boils at 100°C',
    ],
    [
        (double v) => true,
        (double t) => 'nothing special happens at $t°C',
    ],
];

cond(empty, 0.0); // null
cond(conditions, 0.0); // 'water freezes at 0°C'
cond(conditions, 100.0); // 'water boils at 100°C'
cond(conditions, 73.5); // 'nothing special happens at 73.5°C'
```
