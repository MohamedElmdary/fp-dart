import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/pluck.dart';

void main() {
  group('Pluck', () {
    final l1 = [
      {"name": 'fred', "age": 29},
      {"name": 'wilma', "age": 27}
    ];

    final l2 = [
      [1, 2],
      [3, 4]
    ];

    test('regular', () {
      final ages = pluck('age', l1);

      expect(l1 != ages, true);
      expect(ages.length, l1.length);
      expect(ages.first, 29);
      expect(ages.last, 27);

      final lasts = pluck(-1, l2);

      expect(l2 != lasts, true);
      expect(lasts.length, l2.length);
      expect(lasts.first, 2);
      expect(lasts.last, 4);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
