import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/find.dart' as fp;

void main() {
  group('Find', () {
    final m = {};
    final s = new Set();

    final l = [0, 1, 2, m, s];
    test('regular', () {
      expect(fp.find(l, (v) => v == m), m);
      expect(fp.find(l, (v) => v == s), s);
      expect(fp.find(l, (v) => v == 2), 2);
      expect(fp.find(l, (v) => v == 5), null);
    });

    test('curry in order', () {
      expect(fp.findC(l)((v) => v == m), m);
      expect(fp.findC(l)((v) => v == s), s);
      expect(fp.findC(l)((v) => v == 2), 2);
      expect(fp.findC(l)((v) => v == 5), null);
    });

    test('curry reversed', () {
      expect(fp.findCR((v) => v == m)(l), m);
      expect(fp.findCR((v) => v == s)(l), s);
      expect(fp.findCR((v) => v == 2)(l), 2);
      expect(fp.findCR((v) => v == 5)(l), null);
    });
  });
}
