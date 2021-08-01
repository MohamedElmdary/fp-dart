import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/inc.dart';

void main() {
  group('Inc', () {
    test('regular', () {
      expect(inc(1), 2);
      expect(inc(7), 8);
      expect(inc(-1), 0);
    });
  });
}
