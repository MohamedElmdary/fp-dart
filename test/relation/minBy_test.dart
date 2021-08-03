import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/minBy.dart';
import 'dart:math' as math;

void main() {
  group('MinBy', () {
    test('regular', () {
      expect(minBy((x) => -x, [-1, -2, -3, -5]), -1);
      expect(minBy((x) => math.pow(x, 2), [-1, -2, -3, -5]), -1);
      expect(minBy((x) => x, [1, 2, 5, -3, 72]), -3);
      expect(minBy((x) => 1 / x, [1, 2, 3, 4, 5, 6]), 6);
    });
  });
}
