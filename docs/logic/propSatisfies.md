# propSatisfies

```dart
bool propSatisfies(
  bool Function(dynamic) predicate,
  List<dynamic> pathList,
  dynamic object,
)
```

Returns true if the specified object property satisfies the given predicate; false otherwise.

```dart
const m = {
    'x': {
        'y': {'value': 5}
    },
    'a': {
        'b': {
            'c': {
                'value': [0, 1, 2, 3]
            }
        }
    },
    'q': {
    'w': [
            [],
            [
                {'v': 0}
            ]
        ]
    }
};

final eq5 = (v) => v == 5;
final eq3 = (v) => v == 3;
final eq0 = (v) => v == 0;

propSatisfies(eq5, ['x', 'y', 'value'], m); // true
propSatisfies(eq3, ['a', 'b', 'c', 'value', -1], m); // true
propSatisfies(eq0, ['q', 'w', -1, 0, 'v'], m); // true
propSatisfies(eq5, [], m); // false
propSatisfies(eq5, ['notExist'], m); // false
```
