import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/add.dart';

void main() {
  test('Should add int or double.', () {
    // regular
    expect(add(1, 1), 2);
    expect(add(1.2, 5), 6.2);

    // curry
    expect(addC(1)(1), 2);
    expect(addC(7.534)(2.001), 9.535);
  });
}
