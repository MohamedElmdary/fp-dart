import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/xor.dart';

void main() {
  test('xor', () {
    expect(xor(false, false), false);
    expect(xor(true, true), false);
    expect(xor(false, true), true);
    expect(xor(true, false), true);
  });
}
