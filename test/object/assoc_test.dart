import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/assoc.dart';

void main() {
  group('Assoc', () {
    final s = new Set();
    final l = [];

    final m = {'a': 1, 'b': 2};

    test('regular', () {
      final r1 = assoc('s', s, m);
      expect(r1 != m, true);
      expect(r1['a'], m['a']);
      expect(r1['b'], m['b']);
      expect(r1['s'], s);

      final r2 = assoc('l', l, r1);
      expect(r2 != r1, true);
      expect(r2['s'], s);
      expect(r2['l'], l);
    });

    test('curry in order', () {
      final r1 = assocC('s')(s)(m);
      expect(r1 != m, true);
      expect(r1['a'], m['a']);
      expect(r1['b'], m['b']);
      expect(r1['s'], s);

      final r2 = assocC('l')(l)(r1);
      expect(r2 != r1, true);
      expect(r2['s'], s);
      expect(r2['l'], l);
    });

    test('curry reversed', () {
      final r1 = assocCR<String, dynamic>(m)(s)('s');
      expect(r1 != m, true);
      expect(r1['a'], m['a']);
      expect(r1['b'], m['b']);
      expect(r1['s'], s);

      final r2 = assocCR(r1)(l)('l');
      expect(r2 != r1, true);
      expect(r2['s'], s);
      expect(r2['l'], l);
    });
  });
}
