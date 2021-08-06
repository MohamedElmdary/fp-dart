import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/partition.dart';

void main() {
  group('Partition', () {
    final l = ['sss', 'ttt', 'bars'];
    final s = (String v) => v.contains('s');

    test('regular', () {
      final r = partition(s, l);

      expect(r.length, 2);

      final l1 = r.first;
      expect(l1.length, 2);
      expect(l1.first, 'sss');
      expect(l1.last, 'bars');

      final l2 = r.last;
      expect(l2.length, 1);
      expect(l2.first, 'ttt');
    });

    test('curry in order', () {
      final r = partitionC(s)(l);

      expect(r.length, 2);

      final l1 = r.first;
      expect(l1.length, 2);
      expect(l1.first, 'sss');
      expect(l1.last, 'bars');

      final l2 = r.last;
      expect(l2.length, 1);
      expect(l2.first, 'ttt');
    });

    test('curry reversed', () {
      final r = partitionCR(l)(s);

      expect(r.length, 2);

      final l1 = r.first;
      expect(l1.length, 2);
      expect(l1.first, 'sss');
      expect(l1.last, 'bars');

      final l2 = r.last;
      expect(l2.length, 1);
      expect(l2.first, 'ttt');
    });
  });
}
