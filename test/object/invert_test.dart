import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/invert.dart';

void main() {
  group('invert', () {
    final m = {'a': 1, 'b': 1, 'c': 2};

    test('regular', () {
      final r = invert(m);

      expect(r.length, 2);
      expect(r.containsKey(1), true);
      expect(r.containsKey(2), true);

      final o = r[1]!;
      expect(o.length, 2);
      expect(o.first, 'a');
      expect(o.last, 'b');

      final t = r[2]!;
      expect(t.length, 1);
      expect(t.first, 'c');
    });
  });
}
