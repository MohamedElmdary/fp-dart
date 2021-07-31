import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/unless.dart';

void main() {
  test('Unless', () {
    final isNil = (v) => v == null;
    final inc = (v) => v + 1;

    expect(unless(isNil, inc, null), null);
    expect(unless(isNil, inc, 1), 2);
  });
}
