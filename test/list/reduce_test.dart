import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/reduce.dart';

void main() {
  group('Reduce', () {
    final l = [1, 2, 3];
    final sum = (int a, int b) => a + b;

    test('regular', () {
      final s = reduce(sum, 0, l);

      expect(s, 6);
    });

    test('curry in order', () {
      final s = reduceC(sum)(0)(l);

      expect(s, 6);
    });

    test('curry reversed', () {
      final s = reduceCR<int, int>(l)(0)(sum);

      expect(s, 6);
    });
  });
}
