import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/copySet.dart';

void main() {
  group('CopySet', () {
    final l = [{}, new Set(), []];

    final s = Set.from(l);

    test('regular', () {
      final r = copySet(s);

      expect(r != s, true);
      expect(r.length == s.length, true);
      expect(s.containsAll(l), true);
    });
  });
}
