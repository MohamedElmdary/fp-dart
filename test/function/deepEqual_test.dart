import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/deepEqual.dart';

void main() {
  group('DeepEqual', () {
    final m1 = {
      'x': {
        'y': {
          'z': {
            'value': [1, 2, 3]
          }
        },
        'w': {'value': 5},
      },
      'q': Set.from([1, 2]),
      'z': double.nan
    };

    final m2 = {
      'q': Set.from([2, 1]),
      'x': {
        'w': {'value': 5},
        'y': {
          'z': {
            'value': [1, 3, 2]
          }
        },
      },
      'z': double.nan
    };

    final m3 = {
      'q': Set.from([1, 2]),
      'x': {
        'w': {'value': 6},
        'y': {
          'z': {
            'value': [1, 3, 2]
          }
        },
      },
    };
    test('regular', () {
      expect(deepEqual(m1, m2), true);
      expect(deepEqual(m1, m3), false);
      expect(deepEqual(m2, m3), false);
    });

    /// skipped curry (using curry2 function).
  });
}
