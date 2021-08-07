import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/has.dart';

void main() {
  group('Has', () {
    final Map m = {
      'a': 1,
      'b': 2,
      'c': 3,
    };
    test('regular', () {
      expect(has('a', m), true);
      expect(has('b', m), true);
      expect(has('c', m), true);
      expect(has('d', m), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
