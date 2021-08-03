import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/maxBy.dart';
import 'dart:math' as math;

void main() {
  group('MaxBy', () {
    test('regular', () {
      expect(maxBy((x) => -x, [-1, -2, -3, -5]), -5);
      expect(maxBy((x) => math.pow(x, 2), [-1, -2, -3, -5]), -5);
      expect(maxBy((x) => x, [1, 2, 5, -3, 72]), 72);
      expect(maxBy((x) => 1 / x, [1, 2, 3, 4, 5, 6]), 1);
    });
  });
}
