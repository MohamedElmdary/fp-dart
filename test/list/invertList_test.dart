import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/invertList.dart';

void main() {
  group('InvertList', () {
    final l = [0, 1, 0, 1];

    test('regular', () {
      final r = invertList(l);

      expect(r.containsKey(0), true);

      final List l0 = r[0]!;
      expect(l0.length, 2);
      expect(l0.first, 0);
      expect(l0.last, 2);

      expect(r.containsKey(1), true);

      final List l1 = r[1]!;
      expect(l1.length, 2);
      expect(l1.first, 1);
      expect(l1.last, 3);
    });
  });
}
