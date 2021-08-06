import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/append.dart';

void main() {
  group('Append', () {
    final x = [1, 2];
    final y = [3, 4];
    test('regular', () {
      final z = append(x, y);

      expect(x, x);
      expect(y, y);
      expect(z.length, x.length + y.length);
      expect(z[0], 1);
      expect(z[1], 2);
      expect(z[2], 3);
      expect(z[3], 4);
    });

    test('curry in order', () {
      final z = appendC(x)(y);

      expect(x, x);
      expect(y, y);
      expect(z.length, x.length + y.length);
      expect(z[0], 1);
      expect(z[1], 2);
      expect(z[2], 3);
      expect(z[3], 4);
    });

    test('curry reversed', () {
      final z = appendCR(y)(x);

      expect(x, x);
      expect(y, y);
      expect(z.length, x.length + y.length);
      expect(z[0], 1);
      expect(z[1], 2);
      expect(z[2], 3);
      expect(z[3], 4);
    });
  });
}
