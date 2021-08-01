import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/modulo.dart';

void main() {
  group('Modulo', () {
    test('regular', () {
      expect(modulo(2, 2), 0);
      expect(modulo(3, 2), 1);
      expect(modulo(5, 3), 2);
    });

    /// skiped curry & curry reversed (using curry2)
  });
}
