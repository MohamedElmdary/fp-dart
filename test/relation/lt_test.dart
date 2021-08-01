import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/lt.dart';

void main() {
  group('Lt', () {
    test('regular', () {
      expect(() => lt([], {}), throwsException);

      expect(lt(20, 10), false);
      expect(lt(10, 10), false);
      expect(lt([10], []), false);
      expect(lt([], []), false);
      expect(lt({'x': null}, {}), false);
      expect(lt({}, {}), false);
      expect(lt(Set.from(['x']), new Set()), false);
      expect(lt(new Set(), new Set()), false);
      expect(lt('x', ''), false);
      expect(lt('', ''), false);
      expect(lt(true, false), false);
      expect(lt(true, true), false);

      expect(lt(20, 30), true);
      expect(lt([], [10]), true);
      expect(lt({}, {'x': 'x'}), true);
      expect(lt(new Set(), Set.from(['x'])), true);
      expect(lt('', 'x'), true);
      expect(lt(false, true), true);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
