import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/divide.dart';

void main() {
  test('Should decrement number by 1.', () {
    // regular
    expect(divide(1, 1), 1);
    expect(divide(5, 2), 2.5);
    expect(divide(1, 0), double.infinity);

    // curry
    expect(divideC(1)(1), 1);
    expect(divideC(5)(2), 2.5);
    expect(divideC(1)(0), double.infinity);
  });
}
