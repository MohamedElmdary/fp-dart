import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/and.dart';

void main() {
  test('and', () {
    expect(and(false, false), false);
    expect(and(false, true), false);
    expect(and(true, false), false);
    expect(and(true, true), true);
  });
}
