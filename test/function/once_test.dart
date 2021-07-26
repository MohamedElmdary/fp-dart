import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/once.dart';

void main() {
  test('Should return same result everytime.', () {
    final onceInc = once((int e) => e + 1);

    expect(onceInc(10), 11);
    expect(onceInc(20), 11);
    expect(onceInc(30), 11);
    expect(onceInc(100), 11);
  });
}
