import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/eqProps.dart';

void main() {
  group('EqProps', () {
    final s = new Set();

    final m1 = {'n': 5, 's': s, 'l': []};
    final m2 = {'n': 5, 's': s, 'l': []};

    test('regular', () {
      expect(eqProps('n', m1, m2), true);
      expect(eqProps('s', m1, m2), true);
      expect(eqProps('l', m1, m2), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
