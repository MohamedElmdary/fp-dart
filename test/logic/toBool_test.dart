import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/toBool.dart';

void main() {
  test('ToBool', () {
    expect(toBool(double.nan), false);
    expect(toBool(false), false);
    expect(toBool(''), false);
    expect(toBool(null), false);
    expect(toBool(0), false);

    expect(toBool([]), true);
    expect(toBool({}), true);
    expect(toBool('test'), true);
    expect(toBool(new Set()), true);
  });
}
