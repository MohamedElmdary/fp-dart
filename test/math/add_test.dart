import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/add.dart';

void main() {
  group('Add', () {
    test('regular', () {
      expect(add(1, 1), 2);
      expect(add(1, -1), 0);
      expect(add(1.5, 2), 3.5);
      expect(add(1.5, -2), -0.5);
    });

    test('curry in order', () {
      expect(addC(1)(1), 2);
      expect(addC(1)(-1), 0);
      expect(addC(1.5)(2), 3.5);
      expect(addC(1.5)(-2), -0.5);
    });
  });
}
