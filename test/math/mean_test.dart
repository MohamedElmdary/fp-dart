import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/mean.dart';

void main() {
  group('Mean', () {
    test('regular', () {
      expect(mean([]).toString(), "NaN");
      expect(mean([0, 1, 2, 3]), 1.5);
      expect(mean([2, 7, 9]), 6);
    });
  });
}
