import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/pick.dart';

void main() {
  group('Pick', () {
    final m = {
      "a": 1,
      "b": 2,
      "c": 3,
      "d": 4,
    };

    test('regular', () {
      final r = pick(['a', 'd'], m);

      expect(r.length, 2);
      expect(r.containsKey('a'), true);
      expect(r['a'], 1);
      expect(r.containsKey('d'), true);
      expect(r['d'], 4);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
