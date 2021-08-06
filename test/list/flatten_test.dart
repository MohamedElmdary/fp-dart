import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/flatten.dart';

void main() {
  group('Flatten', () {
    final l = [
      1,
      [1, 2],
      [
        5,
        [
          7,
          [
            8,
            [
              9,
              9,
              [10, 99]
            ]
          ]
        ]
      ]
    ];

    test('regular', () {
      final x = flatten(l);

      expect(l != x, true);
      expect(x.length, 10);
    });
  });
}
