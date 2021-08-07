import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/keys.dart';

void main() {
  group('Keys', () {
    final Map m = {
      'a': 1,
      'b': 2,
      'c': 3,
    };
    test('regular', () {
      final ks = keys(m);

      expect(ks.length, 3);
      expect(ks.contains('a'), true);
      expect(ks.contains('b'), true);
      expect(ks.contains('c'), true);
      expect(ks.contains('d'), false);
    });
  });
}
