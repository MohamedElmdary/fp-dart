import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/prop.dart';

void main() {
  group('Prop', () {
    final s = new Set();
    final m = {'a': 1, 's': s};

    test('regular', () {
      expect(prop('a', m), 1);
      expect(prop('s', m), s);
    });

    test('curry in order', () {
      expect(propC('a')(m), 1);
      expect(propC('s')(m), s);
    });

    test('curry reversed', () {
      expect(propCR(m)('a'), 1);
      expect(propCR(m)('s'), s);
    });
  });
}
