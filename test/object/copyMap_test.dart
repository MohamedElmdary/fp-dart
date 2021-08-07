import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/copyMap.dart';

void main() {
  group('CopyMap', () {
    final m = {
      'l': [],
      's': new Set(),
      'm': {},
    };

    test('regular', () {
      final r = copyMap(m);

      expect(r != m, true);
      expect(r['l'], m['l']);
      expect(r['s'], m['s']);
      expect(r['m'], m['m']);
    });
  });
}
