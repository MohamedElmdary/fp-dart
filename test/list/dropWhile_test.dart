import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/dropWhile.dart';

void main() {
  group('DropWhile', () {
    final l = ['1foo', '1bar', 'baz', '111'];
    final sW1 = (String x) => x[0] == "1";

    test('regular', () {
      final d = dropWhile(l, sW1);

      expect(d.length, 2);
      expect(d.first, 'baz');
      expect(d.last, '111');
    });

    test('curry in order', () {
      final d = dropWhileC(l)(sW1);

      expect(d.length, 2);
      expect(d.first, 'baz');
      expect(d.last, '111');
    });

    test('curry reversed', () {
      final d = dropWhileCR(sW1)(l);

      expect(d.length, 2);
      expect(d.first, 'baz');
      expect(d.last, '111');
    });
  });
}
