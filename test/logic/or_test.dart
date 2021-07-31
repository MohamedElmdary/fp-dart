import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/or.dart';

void main() {
  test('or', () {
    expect(or(false, false), false);
    expect(or(false, true), true);
    expect(or(true, false), true);
    expect(or(true, true), true);
  });
}
