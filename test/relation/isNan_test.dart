import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/isNan.dart';

void main() {
  group('IsNan', () {
    test('regular', () {
      expect(isNan(0 / 0), true);
      expect(isNan(double.nan), true);
      expect(isNan(''), false);
    });
  });
}
