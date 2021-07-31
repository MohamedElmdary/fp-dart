import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/not.dart';

void main() {
  test('not', () {
    final isFive = (int x) => x == 5;

    expect(not(isFive)(5), false);
    expect(not(isFive)(0), true);
  });
}
