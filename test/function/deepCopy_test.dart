import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/deepCopy.dart';

void main() {
  group('DeepCopy', () {
    final Map m = {
      'l': [
        {
          'v': {'z': 5}
        }
      ],
      's': new Set(),
      'm': {},
      'nan': double.nan,
      'x': 5
    };

    test('regular', () {
      final copy = deepCopy(m);
      expect(m != copy, true);

      final List l1 = m['l'];
      final List l2 = copy['l'];
      expect(l1 != l2, true);

      final l1f = l1.first;
      final l2f = l2.first;
      expect(l1f != l2f, true);

      final v1 = l1f['v'];
      final v2 = l2f['v'];
      expect(v1 != v2, true);

      final z1 = v1['z'];
      final z2 = v2['z'];
      expect(z1 == z2, true);

      final s1 = m['s'];
      final s2 = copy['s'];
      expect(s1 != s2, true);

      final m1 = m['m'];
      final m2 = copy['m'];
      expect(m1 != m2, true);

      final nan1 = m['nan'];
      final nan2 = copy['nan'];
      expect(nan1 != nan2, true);

      final x1 = m['x'];
      final x2 = copy['x'];
      expect(x1 == x2, true);
    });
  });
}
