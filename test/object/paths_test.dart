import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/paths.dart';

void main() {
  group('Paths', () {
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
      final r = paths([
        ['x', 'y'],
        ['x', 'z'],
        ['l', 'v'],
        ['s']
      ], m);

      expect(r.length, 4);
      expect(r[0], 1);
      expect(r[1], 0);
      expect(r[2], l);
      expect(r[3], s);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
