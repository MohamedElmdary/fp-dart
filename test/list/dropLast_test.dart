import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/dropLast.dart';

void main() {
  group('DropLast', () {
    final l = ['foo', 'bar', 'baz'];

    test('regular', () {
      final d = dropLast(l, 1);

      expect(d.length, 2);
      expect(d.first, 'foo');
      expect(d.last, 'bar');
    });

    test('curry in order', () {
      final d = dropLastC(l)(1);

      expect(d.length, 2);
      expect(d.first, 'foo');
      expect(d.last, 'bar');
    });

    test('curry reversed', () {
      final d = dropLastCR(1)(l);

      expect(d.length, 2);
      expect(d.first, 'foo');
      expect(d.last, 'bar');
    });
  });
}
