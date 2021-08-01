import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/negate.dart';

void main() {
  group('Negate', () {
    test('regular', () {
      expect(negate(0), 0);
      expect(negate(1), -1);
      expect(negate(-1), 1);
      expect(negate(double.infinity), double.negativeInfinity);
      expect(negate(double.negativeInfinity), double.infinity);
    });
  });
}
