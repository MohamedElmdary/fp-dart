# defaultTo

```dart
dynamic defaultTo(dynamic defaultValue, dynamic maybeFalsy)
```

Returns the second argument if it is not null or NaN; otherwise the first argument is returned.

```dart
final m = {};
final l = [];
final s = new Set();

defaultTo('default', null); // 'default'
defaultTo('default', double.nan); // 'default'
defaultTo('default', false); // false
defaultTo('default', 'str'); // 'str'
defaultTo('default', m); // m
defaultTo('default', s); // s
defaultTo('default', l); // l
```
