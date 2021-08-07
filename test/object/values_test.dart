import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/values.dart';

void main() {
  group('values', () {
    final s = new Set();
    final m = {'a': 1, 's': s};

    test('regular', () {
      final r = values(m);

      expect(r.length, 2);
      expect(r.first, 1);
      expect(r.last, s);
    });
  });
}
