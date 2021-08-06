import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/xprod.dart';

void main() {
  group('Xprod', () {
    final l1 = [1];
    final l2 = ['a', 'b'];

    test('regular', () {
      final l = xprod(l1, l2);

      expect(l.length, 2);

      final f = l.first;
      expect(f.x, 1);
      expect(f.y, 'a');

      final last = l.last;
      expect(last.x, 1);
      expect(last.y, 'b');
    });

    test('curry in order', () {
      final l = xprodC(l1)(l2);

      expect(l.length, 2);

      final f = l.first;
      expect(f.x, 1);
      expect(f.y, 'a');

      final last = l.last;
      expect(last.x, 1);
      expect(last.y, 'b');
    });
  });
}
