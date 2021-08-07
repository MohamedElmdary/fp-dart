import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/omitPaths.dart';

void main() {
  group('OmitPaths', () {
    final m = {
      'x': {
        'y': 1,
        'z': 0,
      },
      'a': 5,
      'q': {
        'b': 7,
      }
    };

    test('regular', () {
      final r = omitPaths([
        ['x', 'z'],
        ['a'],
        ['q', 'b']
      ], m);

      expect(r.length, 2);

      final Map x = r['x'];
      expect(x.length, 1);
      expect(x['y'], 1);

      final Map q = r['q'];
      expect(q.length, 0);

      expect(r.containsKey('a'), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
