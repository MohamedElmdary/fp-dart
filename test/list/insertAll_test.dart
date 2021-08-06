import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/insertAll.dart';

void main() {
  group('InsertAll', () {
    final l1 = [0, 1];
    final l2 = ['x', 'y'];

    test('regular', () {
      final l = insertAll(1, l2, l1);

      expect(l.length, 4);
      expect(l.first, 0);
      expect(l[1], 'x');
      expect(l[2], 'y');
      expect(l.last, 1);
    });

    test('curry in order', () {
      final l = insertAllC(1)(l2)(l1);

      expect(l.length, 4);
      expect(l.first, 0);
      expect(l[1], 'x');
      expect(l[2], 'y');
      expect(l.last, 1);
    });

    test('curry reversed', () {
      final l = insertAllCR<dynamic>(l1)(l2)(1);

      expect(l.length, 4);
      expect(l.first, 0);
      expect(l[1], 'x');
      expect(l[2], 'y');
      expect(l.last, 1);
    });
  });
}
