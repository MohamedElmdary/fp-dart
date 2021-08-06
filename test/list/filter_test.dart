import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/filter.dart';

void main() {
  group('Filter', () {
    final l = [1, 2, 3, 5, 6];
    final isEven = (int x) => x % 2 == 0;

    test('regular', () {
      final evens = filter(l, isEven);

      expect(l != evens, true);
      expect(evens.length, 2);
      expect(evens.first, 2);
      expect(evens.last, 6);
    });

    test('curry in order', () {
      final evens = filterC(l)(isEven);

      expect(l != evens, true);
      expect(evens.length, 2);
      expect(evens.first, 2);
      expect(evens.last, 6);
    });

    test('curry reversed', () {
      final evens = filterCR(isEven)(l);

      expect(l != evens, true);
      expect(evens.length, 2);
      expect(evens.first, 2);
      expect(evens.last, 6);
    });
  });
}
