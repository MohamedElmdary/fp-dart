import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/allPass.dart';

void main() {
  group('AllPass', () {
    final list = [
      {'value': 5},
      {'value': 6}
    ];

    bool f(Map x) => x['value'] == 5;
    bool t(Map x) => x['value'] != 10;

    test('regular', () {
      expect(allPass([t], list), true);
      expect(allPass([t, f], list), false);
    });

    test('curry in order', () {
      expect(allPassC([t])(list), true);
      expect(allPassC([t, f])(list), false);
    });

    test('curry reversed', () {
      expect(allPassCR(list)([t]), true);
      expect(allPassCR(list)([t, f]), false);
    });
  });
}
