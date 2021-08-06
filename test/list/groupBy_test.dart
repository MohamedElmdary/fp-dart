import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/groupBy.dart';

void main() {
  group('GroupBy', () {
    final nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    final isEven = (v) => v % 2;

    test('regular', () {
      final evenAndOdd = groupBy(nums, isEven);

      expect(evenAndOdd.keys.length, 2);
      expect(evenAndOdd.containsKey(0), true);
      expect(evenAndOdd.containsKey(1), true);
      expect(evenAndOdd[0]!.length, 5);
      expect(evenAndOdd[1]!.length, 5);
    });

    test('curry in order', () {
      final evenAndOdd = groupByC(nums)(isEven);

      expect(evenAndOdd.keys.length, 2);
      expect(evenAndOdd.containsKey(0), true);
      expect(evenAndOdd.containsKey(1), true);
      expect(evenAndOdd[0]!.length, 5);
      expect(evenAndOdd[1]!.length, 5);
    });

    test('curry reversed', () {
      final evenAndOdd = groupByCR(isEven)(nums);

      expect(evenAndOdd.keys.length, 2);
      expect(evenAndOdd.containsKey(0), true);
      expect(evenAndOdd.containsKey(1), true);
      expect(evenAndOdd[0]!.length, 5);
      expect(evenAndOdd[1]!.length, 5);
    });
  });
}
