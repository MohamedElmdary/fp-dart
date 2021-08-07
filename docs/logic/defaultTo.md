# defaultTo

```dart
dynamic defaultTo(dynamic defaultValue, dynamic maybeFalsy)
```

Returns the second argument if it is not null or NaN; otherwise the first argument is returned.

```dart
final m = {};
final l = [];
final s = new Set();
final def = defaultToC('default');

def(null); // 'default'
def(double.nan); // 'default'
def(false); // false
def('str'); // 'str'
def(m); // m
def(s); // s
def(l); // l
```
