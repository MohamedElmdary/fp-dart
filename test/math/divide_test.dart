import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/divide.dart';

void main() {
  group('Divide', () {
    test('regular', () {
      expect(divide(1, 0), double.infinity);
      expect(divide(0, 0).toString(), "NaN");
      expect(divide(0, 3.5), 0);
      expect(divide(1, 1), 1);
      expect(divide(1, 2), 0.5);
      expect(divide(5, 2), 2.5);
    });

    // skiped curry & curry reversed (using curry2)
  });
}
