import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/not.dart';

void main() {
  group('Not', () {
    final isFive = (v) => v == 5;

    test('regular', () {
      expect(not(isFive, 5), false);
      expect(not(isFive, 0), true);
    });

    test('curry in order', () {
      expect(notC(isFive)(5), false);
      expect(notC(isFive)(0), true);
    });

    test('curry reversed', () {
      expect(notCR(5)(isFive), false);
      expect(notCR(0)(isFive), true);
    });
  });
}
