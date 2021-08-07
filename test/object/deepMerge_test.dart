import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/deepMerge.dart';

void main() {
  group('DeepMerge', () {
    final Map x = {
      'x': {'y': []},
      'z': new Set()
    };

    final y = {
      'x': {
        'y': [1]
      }
    };

    test('regular', () {
      final r = deepMerge(x, y);

      expect(r != x, true);
      expect(r != y, true);
      expect(x['z'], r['z']);
      expect(r['x']['y'] != x['x']['y'], true);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
