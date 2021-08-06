import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/drop.dart';

void main() {
  group('Drop', () {
    final l = ['foo', 'bar', 'baz'];

    test('regular', () {
      final d = drop(l, 1);

      expect(d.length, 2);
      expect(d.first, 'bar');
      expect(d.last, 'baz');
    });

    test('curry in order', () {
      final d = dropC(l)(1);

      expect(d.length, 2);
      expect(d.first, 'bar');
      expect(d.last, 'baz');
    });

    test('curry reversed', () {
      final d = dropCR(1)(l);

      expect(d.length, 2);
      expect(d.first, 'bar');
      expect(d.last, 'baz');
    });
  });
}
