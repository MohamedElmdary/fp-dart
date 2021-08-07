import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/omit.dart';

void main() {
  group('Omit', () {
    final m = {
      "a": 1,
      "b": 2,
      "c": 3,
      "d": 4,
    };

    test('regular', () {
      final r = omit({'a', 'd'}, m);

      expect(r.length, 2);
      expect(r.containsKey('b'), true);
      expect(r.containsKey('c'), true);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
