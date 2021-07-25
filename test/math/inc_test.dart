import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/inc.dart';

void main() {
  test('Should increment number by 1.', () {
    // regular
    expect(inc(1), 2);
    expect(inc(1.99), 2.99);
  });
}
