import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/findIndex.dart';

void main() {
  group('FindIndex', () {
    final m = {};
    final s = new Set();

    final l = [0, 1, 2, m, s];
    test('regular', () {
      expect(findIndex(l, (v) => v == 0), 0);
      expect(findIndex(l, (v) => v == m), 3);
      expect(findIndex(l, (v) => v == s), 4);
      expect(findIndex(l, (v) => v == 5), -1);
    });

    test('curry in order', () {
      expect(findIndexC(l)((v) => v == 0), 0);
      expect(findIndexC(l)((v) => v == m), 3);
      expect(findIndexC(l)((v) => v == s), 4);
      expect(findIndexC(l)((v) => v == 5), -1);
    });

    test('curry reversed', () {
      expect(findIndexCR((v) => v == 0)(l), 0);
      expect(findIndexCR((v) => v == m)(l), 3);
      expect(findIndexCR((v) => v == s)(l), 4);
      expect(findIndexCR((v) => v == 5)(l), -1);
    });
  });
}
