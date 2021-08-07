import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/pickAll.dart';

void main() {
  group('PickAll', () {
    final m = {
      "a": 1,
      "b": 2,
      "c": 3,
      "d": 4,
    };

    test('regular', () {
      final r = pickAll(['a', 'd', 'e'], m);

      expect(r.length, 3);
      expect(r.containsKey('a'), true);
      expect(r['a'], 1);
      expect(r.containsKey('d'), true);
      expect(r['d'], 4);
      expect(r.containsKey('e'), true);
      expect(r['e'], null);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
