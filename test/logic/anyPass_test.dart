import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/anyPass.dart';

void main() {
  group('AnyPass', () {
    final list = [
      {'value': 5},
      {'value': 6}
    ];

    bool f(Map x) => x['value'] == 5.5;
    bool t(Map x) => x['value'] != 10;

    test('regular', () {
      expect(anyPass([t], list), true);
      expect(anyPass([f], list), false);
      expect(anyPass([t, f], list), true);
    });

    test('curry in order', () {
      expect(anyPassC([t])(list), true);
      expect(anyPassC([f])(list), false);
      expect(anyPassC([t, f])(list), true);
    });

    test('curry reversed', () {
      expect(anyPassCR(list)([t]), true);
      expect(anyPassCR(list)([f]), false);
      expect(anyPassCR(list)([t, f]), true);
    });
  });
}
