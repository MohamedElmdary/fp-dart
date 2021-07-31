import 'package:flutter_test/flutter_test.dart';
import 'package:fp/curry/curry3.dart';

void main() {
  group('Curry3', () {
    final subThenDiv = (int a, int b, int by) => (a - b) / by;

    test('in order', () {
      final subThenDivC = curry3(subThenDiv);
      final subThenDivCWitha1 = subThenDivC(1);

      expect(subThenDivC(1)(1)(1), subThenDiv(1, 1, 1));
      expect(subThenDivC(2)(7)(6), subThenDiv(2, 7, 6));
      expect(subThenDivCWitha1(1)(1), subThenDiv(1, 1, 1));

      // check for the value change
      expect(subThenDivCWitha1(1)(1), subThenDiv(1, 1, 1));
    });

    test('reversed', () {
      final subThenDivCR = curry3R(subThenDiv);
      final by5 = subThenDivCR(5);

      final x = subThenDiv(2, 1, 5);

      expect(subThenDivCR(1)(1)(1), subThenDiv(1, 1, 1));
      expect(subThenDivCR(5)(1)(2), x);
      expect(by5(1)(2), x);

      // check for the value change
      expect(by5(1)(2), x);
    });
  });
}
