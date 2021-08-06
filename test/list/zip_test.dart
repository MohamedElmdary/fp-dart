import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/zip.dart';

void main() {
  group('Zip', () {
    final l1 = [1, 2];
    final l2 = ['a', 'b', 'c'];

    test('regular', () {
      final z = zip(l1, l2);

      expect(z.length, 2);

      final f = z.first;
      expect(f.x, 1);
      expect(f.y, 'a');

      final l = z.last;
      expect(l.x, 2);
      expect(l.y, 'b');
    });

    test('curry in order', () {
      final z = zipC(l1)(l2);

      expect(z.length, 2);

      final f = z.first;
      expect(f.x, 1);
      expect(f.y, 'a');

      final l = z.last;
      expect(l.x, 2);
      expect(l.y, 'b');
    });
  });
}
