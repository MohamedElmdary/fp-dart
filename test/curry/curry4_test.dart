import 'package:flutter_test/flutter_test.dart';
import 'package:fp/curry/curry4.dart';

void main() {
  group('Curry4', () {
    /// it doesn't matter what its doing at all
    final f = (int a, int b, double c, double q) => a + b / c * q;

    test('in order', () {
      final fC = curry4(f);

      expect(fC(1)(1)(1)(1), f(1, 1, 1, 1));
      expect(fC(4)(8)(7)(3.5), f(4, 8, 7, 3.5));
    });

    test('reversed', () {
      final fCR = curry4R(f);

      expect(fCR(1)(1)(1)(1), f(1, 1, 1, 1));
      expect(fCR(3.5)(7)(8)(4), f(4, 8, 7, 3.5));
    });
  });
}
