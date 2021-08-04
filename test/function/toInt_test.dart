import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/toInt.dart';

void main() {
  group('ToInt', () {
    test('regular', () {
      expect(toInt(1), 1);
      expect(toInt(1.1), 1);
      expect(toInt(1.0), 1);
    });
  });
}
