import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/findLastIndex.dart';

void main() {
  group('FindLastIndex', () {
    final m = {};
    final s = new Set();

    final l = [0, 1, 2, m, s, 2, 1, m, s];
    test('regular', () {
      expect(findLastIndex(l, (v) => v == 0), 0);
      expect(findLastIndex(l, (v) => v == m), 7);
      expect(findLastIndex(l, (v) => v == 1), 6);
      expect(findLastIndex(l, (v) => v == s), 8);
      expect(findLastIndex(l, (v) => v == 5), -1);
    });

    test('curry in order', () {
      expect(findLastIndexC(l)((v) => v == 0), 0);
      expect(findLastIndexC(l)((v) => v == m), 7);
      expect(findLastIndexC(l)((v) => v == 1), 6);
      expect(findLastIndexC(l)((v) => v == s), 8);
      expect(findLastIndexC(l)((v) => v == 5), -1);
    });

    test('curry reversed', () {
      expect(findLastIndexCR((v) => v == 0)(l), 0);
      expect(findLastIndexCR((v) => v == m)(l), 7);
      expect(findLastIndexCR((v) => v == 1)(l), 6);
      expect(findLastIndexCR((v) => v == s)(l), 8);
      expect(findLastIndexCR((v) => v == 5)(l), -1);
    });
  });
}
