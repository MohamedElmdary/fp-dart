import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/gte.dart';

void main() {
  group('Gte', () {
    test('regular', () {
      expect(() => gte([], {}), throwsException);

      expect(gte(20, 10), true);
      expect(gte(10, 10), true);
      expect(gte([10], []), true);
      expect(gte([], []), true);
      expect(gte({'x': null}, {}), true);
      expect(gte({}, {}), true);
      expect(gte(Set.from(['x']), new Set()), true);
      expect(gte(new Set(), new Set()), true);
      expect(gte('x', ''), true);
      expect(gte('', ''), true);
      expect(gte(true, false), true);
      expect(gte(true, true), true);

      expect(gte(20, 30), false);
      expect(gte([], [10]), false);
      expect(gte({}, {'x': 'x'}), false);
      expect(gte(new Set(), Set.from(['x'])), false);
      expect(gte('', 'x'), false);
      expect(gte(false, true), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
