import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/dec.dart';

void main() {
  test('Should decrement number by 1.', () {
    // regular
    expect(dec(1), 0);
    expect(dec(1.99), 0.99);
  });
}
