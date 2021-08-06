import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/forEach.dart';

void main() {
  group('ForEach', () {
    final l = [0, 1, 2, 3];
    final triple = (v) => v * 3;

    test('regular', () {
      final x = [];
      forEach(l, (v, idx, list) {
        x.add(triple(v));
      });

      expect(x.length, l.length);
      expect(x.first, 0);
      expect(x.last, 9);
      expect(x[1], 3);
      expect(x[2], 6);
    });

    test('curry in order', () {
      final x = [];
      forEachC(l)((v, idx, list) {
        x.add(triple(v));
      });

      expect(x.length, l.length);
      expect(x.first, 0);
      expect(x.last, 9);
      expect(x[1], 3);
      expect(x[2], 6);
    });

    test('curry reversed', () {
      final x = [];
      forEachCR((v, idx, list) {
        x.add(triple(v));
      })(l);

      expect(x.length, l.length);
      expect(x.first, 0);
      expect(x.last, 9);
      expect(x[1], 3);
      expect(x[2], 6);
    });
  });
}
