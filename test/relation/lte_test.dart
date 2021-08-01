import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/lte.dart';

void main() {
  group('Lte', () {
    test('regular', () {
      expect(() => lte([], {}), throwsException);

      expect(lte(20, 10), false);
      expect(lte([10], []), false);
      expect(lte({'x': null}, {}), false);
      expect(lte(Set.from(['x']), new Set()), false);
      expect(lte('x', ''), false);
      expect(lte(true, false), false);

      expect(lte(20, 20), true);
      expect(lte([], []), true);
      expect(lte({}, {}), true);
      expect(lte(new Set(), new Set()), true);
      expect(lte('', ''), true);
      expect(lte(true, true), true);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
