import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/difference.dart';

void main() {
  group('Difference', () {
    const l1 = [1, 2, 3, 4];
    const l2 = [7, 6, 5, 4, 3];

    const l3 = [
      {"a": 1},
      {"b": 2}
    ];
    const l4 = [
      {"a": 1},
      {"c": 3}
    ];

    final x = difference(l3, l4);

    test('regular', () {
      expect(difference(l1, l2).join(' '), '1 2');
      expect(difference(l2, l1).join(' '), '7 6 5');
      expect(difference(l1, []).join(' '), '1 2 3 4');
      expect(x.length, 1);
      expect(x[0], l3[1]);
      expect(x[0]['b'], 2);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
