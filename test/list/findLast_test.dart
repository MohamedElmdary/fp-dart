import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/findLast.dart';

void main() {
  group('FindLast', () {
    final m = {};
    final s = new Set();

    final l = [0, 1, 2, m, s, 2, 1, m, s];
    test('regular', () {
      expect(findLast(l, (v) => v == m), m);
      expect(findLast(l, (v) => v == s), s);
      expect(findLast(l, (v) => v == 2), 2);
      expect(findLast(l, (v) => v == 5), null);
    });

    test('curry in order', () {
      expect(findLastC(l)((v) => v == m), m);
      expect(findLastC(l)((v) => v == s), s);
      expect(findLastC(l)((v) => v == 2), 2);
      expect(findLastC(l)((v) => v == 5), null);
    });

    test('curry reversed', () {
      expect(findLastCR((v) => v == m)(l), m);
      expect(findLastCR((v) => v == s)(l), s);
      expect(findLastCR((v) => v == 2)(l), 2);
      expect(findLastCR((v) => v == 5)(l), null);
    });
  });
}
