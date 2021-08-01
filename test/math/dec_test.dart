import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/dec.dart';

void main() {
  group('Dec', () {
    test('regular', () {
      expect(dec(1), 0);
      expect(dec(7), 6);
      expect(dec(-1), -2);
    });
  });
}
