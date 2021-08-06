import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/reduceRight.dart';

void main() {
  group('Reduce', () {
    final l = [1, 2, 3];
    final sum = (int a, int b) => a + b;

    test('regular', () {
      final s = reduceRight(sum, 0, l);

      expect(s, 6);
    });

    test('curry in order', () {
      final s = reduceRightC(sum)(0)(l);

      expect(s, 6);
    });

    test('curry reversed', () {
      final s = reduceRightCR<int, int>(l)(0)(sum);

      expect(s, 6);
    });
  });
}
