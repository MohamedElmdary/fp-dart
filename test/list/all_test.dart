import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/all.dart';

void main() {
  group('All', () {
    final eq3 = (int v) => v == 3;

    test('regular', () {
      expect(all(eq3, [3, 3, 3]), true);
      expect(all(eq3, [3, 1, 3]), false);
    });

    test('curry in order', () {
      expect(allC(eq3)([3, 3, 3]), true);
      expect(allC(eq3)([3, 1, 3]), false);
    });

    test('curry reversed', () {
      expect(allCR([3, 3, 3])(eq3), true);
      expect(allCR([3, 1, 3])(eq3), false);
    });
  });
}
