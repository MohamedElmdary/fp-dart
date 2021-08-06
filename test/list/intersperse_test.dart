import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/intersperse.dart';

void main() {
  group('Intersperse', () {
    final l = [0, 1];

    test('regular', () {
      final r = intersperse('a', l);

      expect(r.length, 3);
      expect(r.first, 0);
      expect(r[1], 'a');
      expect(r.last, 1);
    });

    test('curry in order', () {
      final r = intersperseC<dynamic>('a')(l);

      expect(r.length, 3);
      expect(r.first, 0);
      expect(r[1], 'a');
      expect(r.last, 1);
    });

    test('curry reversed', () {
      final r = intersperseCR<dynamic>(l)('a');

      expect(r.length, 3);
      expect(r.first, 0);
      expect(r[1], 'a');
      expect(r.last, 1);
    });
  });
}
