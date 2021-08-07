# isEmpty

```dart
bool isEmpty(dynamic value)
```

Returns true if the given value is its type's empty value; false otherwise.

```dart
isEmpty(new Set()); // true
isEmpty([]); // true
isEmpty({}); // true
isEmpty(''); // true

isEmpty(null); // false
isEmpty(Set.from(['test'])); // false
isEmpty(['test']); // false
isEmpty({'test': 'test'}); // false
isEmpty('test'); // false
```
