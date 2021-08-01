import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/countBy.dart';

void main() {
  group('CountBy', () {
    final l1 = [0, 1];
    final l2 = [0, 1, 2, 3, 4, 5, 6];

    test('regular', () {
      final cL1 = countBy((v) => v, l1);
      final cL2 = countBy((dynamic v) => v % 2, l2);

      expect(cL1[0], 1);
      expect(cL1[1], 1);

      expect(cL2[0], 4);
      expect(cL2[1], 3);
    });

    test('curry in order', () {
      final cL1 = countByC((v) => v)(l1);
      final cL2 = countByC((dynamic v) => v % 2)(l2);

      expect(cL1[0], 1);
      expect(cL1[1], 1);

      expect(cL2[0], 4);
      expect(cL2[1], 3);
    });

    test('curry reversed', () {
      final cL1 = countByCR(l1)((v) => v);
      final cL2 = countByCR(l2)((dynamic v) => v % 2);

      expect(cL1[0], 1);
      expect(cL1[1], 1);

      expect(cL2[0], 4);
      expect(cL2[1], 3);
    });
  });
}
