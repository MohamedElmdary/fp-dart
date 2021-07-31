import 'package:flutter_test/flutter_test.dart';
import 'package:fp/curry/curry2.dart';

void main() {
  group('Curry2', () {
    /// it doesn't matter what its doing at all
    final f = (int a, int b) => a - b * a / b * 3.5;

    test('in order', () {
      final fC = curry2(f);

      expect(fC(1)(1), f(1, 1));
      expect(fC(4)(8), f(4, 8));
    });

    test('reversed', () {
      final fCR = curry2R(f);

      expect(fCR(1)(1), f(1, 1));
      expect(fCR(8)(4), f(4, 8));
    });
  });
}
