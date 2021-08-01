import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/multiply.dart';

void main() {
  group('Multiply', () {
    test('regular', () {
      expect(multiply(0, 1), 0);
      expect(multiply(1, 1), 1);
      expect(multiply(-1, 1), -1);
      expect(multiply(-1, double.infinity), double.negativeInfinity);
    });

    /// skiped curry (using curry2)
  });
}
