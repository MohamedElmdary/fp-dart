import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/pathEq.dart';

void main() {
  group('PathEq', () {
    final m = {
      'x': {
        'y': {
          'z': [
            {'v': 1},
            {'v': 5}
          ]
        }
      }
    };

    test('regular', () {
      expect(pathEq(['x', 'y', 'z', -1, 'v'], 5, m), true);
      expect(pathEq(['x', 'y', 'z', 0, 'v'], 1, m), true);
      expect(pathEq(['x', 'y', 'z', -2, 'v'], 1, m), true);
      expect(pathEq(['x', 'y', 'z', -1, 'v'], 1, m), false);
    });
  });
}
