import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/dissocPath.dart';

void main() {
  group('DissocPath', () {
    final Map m = {
      'x': {
        'y': {
          'a': 1,
          'b': 2,
          'c': 3,
        }
      }
    };

    test('regular', () {
      final r = dissocPath(['x', 'y', 'c'], m);

      expect(m != r, true);

      final Map x = r['x'];
      final Map y = x['y'];
      expect(y.containsKey('a'), true);
      expect(y.containsKey('b'), true);
      expect(y.containsKey('c'), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
