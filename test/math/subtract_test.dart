import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/subtract.dart';

void main() {
  group('Subtract', () {
    test('regular', () {
      expect(subtract(1, 1), 0);
      expect(subtract(0, 1), -1);
      expect(subtract(1, 0), 1);
      expect(subtract(-1, 1), -2);
      expect(subtract(1, -1), 2);
    });

    // skiped curry & curry reversed (using curry2)
  });
}
