import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/toPairs.dart';

void main() {
  group('ToPairs', () {
    final s = new Set();
    final m = {'a': 1, 's': s};

    test('regular', () {
      final r = toPairs(m);

      expect(r.length, 2);

      final f = r.first;
      expect(f.length, 2);
      expect(f.first, 'a');
      expect(f.last, 1);

      final l = r.last;
      expect(l.length, 2);
      expect(l.first, 's');
      expect(l.last, s);
    });
  });
}
