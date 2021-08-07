# both

```dart
bool both<T>(List<bool Function(T)> fns, T value)
```

A function which calls the two provided functions and returns the && of the results. It returns the result of the first function if it is false-y and the result of the second function otherwise. Note that this is short-circuited, meaning that the second function will not be invoked if the first returns a false-y value.

```dart
const int value = 10;

bool f(int x) => x < 20;
bool t(int x) => x > 0;
bool ignored(int x) => x == 0;
final tList = [f, t, ignored];
final fList = [ignored, f, t];
final List<bool Function(int)> empty = [];

both(empty, value); // throwsException
both([f], value); // throwsException
both(tList, value); // true
both(fList, value); // false
```
