import 'package:flutter_test/flutter_test.dart';
import 'package:fp/curry/curry2.dart';

void main() {
  group('Curry2', () {
    final sub = (int a, int b) => a - b;

    test('in order', () {
      final subC = curry2(sub);
      final subFromOne = subC(1);

      expect(subC(1)(2), sub(1, 2));
      expect(subFromOne(1), sub(1, 1));

      // check if the value didn't change
      expect(subFromOne(1), sub(1, 1));
    });

    test('reversed', () {
      final subCR = curry2R(sub);
      final dec = subCR(1);

      expect(subCR(2)(1), sub(1, 2));
      expect(dec(2), sub(2, 1));

      // check if the value didn't change
      expect(dec(1), sub(1, 1));
    });
  });
}
