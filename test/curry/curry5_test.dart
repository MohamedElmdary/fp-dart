import 'package:flutter_test/flutter_test.dart';
import 'package:fp/curry/curry5.dart';

void main() {
  group('Curry5', () {
    /// it doesn't matter what its doing at all
    double f(int a, int b, double c, double q, double x) {
      return x * (a + b / c * q) - 1.625;
    }

    test('in order', () {
      final fC = curry5(f);

      expect(fC(1)(1)(1)(1)(1), f(1, 1, 1, 1, 1));
      expect(fC(4)(8)(7)(3.5)(7.3), f(4, 8, 7, 3.5, 7.3));
    });

    test('reversed', () {
      final fCR = curry5R(f);

      expect(fCR(1)(1)(1)(1)(1), f(1, 1, 1, 1, 1));
      expect(fCR(7.3)(3.5)(7)(8)(4), f(4, 8, 7, 3.5, 7.3));
    });
  });
}
