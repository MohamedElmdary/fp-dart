import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/path.dart';

void main() {
  group('Path', () {
    final s = new Set();
    final l = [];

    final m = {
      'x': {
        'y': 1,
        'z': 0,
      },
      'l': {'v': l},
      's': s
    };

    test('regular', () {
      expect(path(['x', 'y'], m), 1);
      expect(path(['x', 'z'], m), 0);
      expect(path(['l', 'v'], m), l);
      expect(path(['s'], m), s);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
