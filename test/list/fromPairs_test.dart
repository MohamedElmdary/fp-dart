import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/fromPairs.dart';

void main() {
  group('FromPairs', () {
    final pairs = [
      ['a', 1],
      ['b', 2],
      ['c', 3]
    ];

    test('regular', () {
      final m = fromPairs(pairs);

      expect(m.keys.length, 3);
      expect(m['a'], 1);
      expect(m['b'], 2);
      expect(m['c'], 3);
    });
  });
}
