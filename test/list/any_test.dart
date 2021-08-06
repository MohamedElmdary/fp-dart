import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/any.dart';

void main() {
  group('Any', () {
    final eq3 = (int v) => v == 3;

    test('regular', () {
      expect(any([3, 3], eq3), true);
      expect(any([3, 1], eq3), true);
      expect(any([1, 1], eq3), false);
    });

    test('curry in order', () {
      expect(anyC([3, 3])(eq3), true);
      expect(anyC([3, 1])(eq3), true);
      expect(anyC([1, 1])(eq3), false);
    });

    test('curry reversed', () {
      expect(anyCR(eq3)([3, 3]), true);
      expect(anyCR(eq3)([3, 1]), true);
      expect(anyCR(eq3)([1, 1]), false);
    });
  });
}
