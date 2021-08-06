import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/sort.dart';
import 'package:fp/function/ascend.dart';
import 'package:fp/function/descend.dart';
import 'package:fp/function/itSelf.dart';

void main() {
  group('Sort', () {
    final l = [3, 0, 1];

    test('regular', () {
      final up = sort(ascendC(itSelf), l);
      final u1 = up[0];
      final u2 = up[1];
      final u3 = up[2];
      expect(u1, 0);
      expect(u2, 1);
      expect(u3, 3);

      final down = sort(descendC(itSelf), l);
      final d1 = down[0];
      final d2 = down[1];
      final d3 = down[2];
      expect(d1, 3);
      expect(d2, 1);
      expect(d3, 0);
    });

    test('curry in order', () {
      final up = sortC(ascendC(itSelf))(l);
      final u1 = up[0];
      final u2 = up[1];
      final u3 = up[2];
      expect(u1, 0);
      expect(u2, 1);
      expect(u3, 3);

      final down = sortC(descendC(itSelf))(l);
      final d1 = down[0];
      final d2 = down[1];
      final d3 = down[2];
      expect(d1, 3);
      expect(d2, 1);
      expect(d3, 0);
    });

    test('curry reversed', () {
      final up = sortCR(l)(ascendC(itSelf));
      final u1 = up[0];
      final u2 = up[1];
      final u3 = up[2];
      expect(u1, 0);
      expect(u2, 1);
      expect(u3, 3);

      final down = sortCR(l)(descendC(itSelf));
      final d1 = down[0];
      final d2 = down[1];
      final d3 = down[2];
      expect(d1, 3);
      expect(d2, 1);
      expect(d3, 0);
    });
  });
}
