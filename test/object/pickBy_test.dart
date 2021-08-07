import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/pickBy.dart';

void main() {
  group('PickBy', () {
    final m = {
      "a": 1,
      "b": 2,
      "c": 3,
      "d": 4,
    };

    test('regular', () {
      final r = pickBy((v, k) => v > 2, m);

      expect(r.length, 2);
      expect(r.containsKey('c'), true);
      expect(r['c'], 3);
      expect(r.containsKey('d'), true);
      expect(r['d'], 4);
      expect(r.containsKey('a'), false);
      expect(r.containsKey('b'), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
