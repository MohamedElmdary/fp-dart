import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/xor.dart';

void main() {
  test('xor', () {
    expect(xor(false, false), false);
    expect(xor(true, true), false);
    expect(xor(false, true), true);
    expect(xor(true, false), true);
    expect(xor([], {}), false);
    expect(xor([], false), true);
    expect(xor({}, false), true);
    expect(xor('', false), false);
    expect(xor(' ', false), true);
    expect(xor({}, true), false);
  });
}
