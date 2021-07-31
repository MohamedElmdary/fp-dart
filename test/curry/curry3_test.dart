import 'package:flutter_test/flutter_test.dart';
import 'package:fp/curry/curry3.dart';

void main() {
  group('Curry3', () {
    /// it doesn't matter what its doing at all
    final f = (int a, int b, int by) => (a - b) / by * a + b * 3.5;

    test('in order', () {
      final fC = curry3(f);

      expect(fC(1)(1)(1), f(1, 1, 1));
      expect(fC(3)(4)(7), f(3, 4, 7));
    });

    test('reversed', () {
      final fCR = curry3R(f);

      expect(fCR(1)(1)(1), f(1, 1, 1));
      expect(fCR(7)(4)(3), f(3, 4, 7));
    });
  });
}
