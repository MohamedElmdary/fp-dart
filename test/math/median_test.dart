import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/median.dart';

void main() {
  group('Median', () {
    test('regular', () {
      expect(median([]).toString(), "NaN");
      expect(median([2, 9, 7]), 7);
      expect(median([7, 2, 10, 9]), 8);
    });
  });
}
