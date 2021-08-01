import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/gt.dart';

void main() {
  group('Gt', () {
    test('regular', () {
      expect(() => gt([], {}), throwsException);

      expect(gt(20, 10), true);
      expect(gt([10], []), true);
      expect(gt({'x': null}, {}), true);
      expect(gt(Set.from(['x']), new Set()), true);
      expect(gt('x', ''), true);
      expect(gt(true, false), true);

      expect(gt(20, 20), false);
      expect(gt([], []), false);
      expect(gt({}, {}), false);
      expect(gt(new Set(), new Set()), false);
      expect(gt('', ''), false);
      expect(gt(true, true), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
