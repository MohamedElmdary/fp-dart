import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/until.dart';

void main() {
  group('Until', () {
    final gt100 = (int v) => v > 100;
    final x2 = (v) => v * 2;
    const value = 1;

    test('regular', () {
      expect(until(gt100, x2, value), 128);
    });

    test('curry in order', () {
      expect(untilC(gt100)(x2)(value), 128);
    });

    test('curry reversed', () {
      expect(untilCR(value)(x2)(gt100), 128);
    });
  });
}
