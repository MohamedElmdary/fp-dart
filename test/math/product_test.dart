import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/product.dart';

void main() {
  group('Product', () {
    test('regular', () {
      expect(product([]), 1);
      expect(product([0, 1, 2, 3, 4]), 0);
      expect(product([1, 2.5, 3]), 1 * 2.5 * 3);
    });
  });
}
