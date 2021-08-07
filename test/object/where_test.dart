import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/where.dart' as fp;

void main() {
  group('Where', () {
    final m = {
      'a': {
        'b': {'c': 5}
      },
      'z': 7
    };

    final trueFn = {
      'a': {
        'b': {'c': (v) => v == 5}
      },
      'z': (v) => v > 1
    };

    final falseFn = {'z': (v) => v < 1};

    test('regular', () {
      expect(fp.where(trueFn, m), true);
      expect(fp.where(falseFn, m), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
