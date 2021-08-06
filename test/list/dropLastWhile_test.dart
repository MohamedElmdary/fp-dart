import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/dropLastWhile.dart';

void main() {
  group('DropLastWhile', () {
    final l = ['1foo', '1bar', 'baz', '111'];
    final sW1 = (String x) => x[0] == "1";

    test('regular', () {
      final d = dropLastWhile(l, sW1);

      expect(d.length, 3);
      expect(d.first, '1foo');
      expect(d.last, 'baz');
    });

    test('curry in order', () {
      final d = dropLastWhileC(l)(sW1);

      expect(d.length, 3);
      expect(d.first, '1foo');
      expect(d.last, 'baz');
    });

    test('curry reversed', () {
      final d = dropLastWhileCR(sW1)(l);

      expect(d.length, 3);
      expect(d.first, '1foo');
      expect(d.last, 'baz');
    });
  });
}
