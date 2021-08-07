import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/hasPath.dart';

void main() {
  group('HasPath', () {
    final Map m = {
      'a': 1,
      'x': {
        'y': {'z': null}
      },
      'q': {'b': double.nan}
    };
    test('regular', () {
      expect(hasPath(['a'], m), true);
      expect(hasPath(['x', 'y', 'z'], m), true);
      expect(hasPath(['q', 'b'], m), true);
      expect(hasPath(['a', 'a'], m), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
