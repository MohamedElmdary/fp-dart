import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/both.dart';

void main() {
  group('Both', () {
    const int value = 10;

    bool f(int x) => x < 20;
    bool t(int x) => x > 0;
    bool ignored(int x) => x == 0;
    final tList = [f, t, ignored];
    final fList = [ignored, f, t];
    final List<bool Function(int)> empty = [];

    test('regular', () {
      expect(() => both(empty, value), throwsException);
      expect(() => both([f], value), throwsException);
      expect(both(tList, value), true);
      expect(both(fList, value), false);
    });

    test('curry in order', () {
      expect(() => bothC(empty)(value), throwsException);
      expect(() => bothC([f])(value), throwsException);
      expect(bothC(tList)(value), true);
      expect(bothC(fList)(value), false);
    });

    test('curry reversed', () {
      expect(() => bothCR(value)(empty), throwsException);
      expect(() => bothCR(value)([f]), throwsException);
      expect(bothCR(value)(tList), true);
      expect(bothCR(value)(fList), false);
    });
  });
}
