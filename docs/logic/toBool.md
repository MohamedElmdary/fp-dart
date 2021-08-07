# toBool

```dart
bool toBool(dynamic value)
```

A function that takes in `dynamic` value and returns false if value is `false`, `null`, `0`, `NaN` or `''`; otherwise returns true.

```dart
toBool(double.nan); // false
toBool(false); // false
toBool(''); // false
toBool(null); // false
toBool(0); // false

toBool([]); // true
toBool({}); // true
toBool('test'); // true
toBool(new Set()); // true
```
