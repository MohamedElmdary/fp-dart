import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/map.dart';

void main() {
  group('Map', () {
    final l = [2, 3, 2];
    final toZero = (int x) => x % 2;

    test('regular', () {
      final zerosOnes = map(l, toZero);

      expect(l != zerosOnes, true);
      expect(zerosOnes.length, l.length);
      expect(zerosOnes[0], 0);
      expect(zerosOnes[2], 0);
      expect(zerosOnes[1], 1);
    });

    test('curry in order', () {
      final zerosOnes = mapC(l)(toZero);

      expect(l != zerosOnes, true);
      expect(zerosOnes.length, l.length);
      expect(zerosOnes[0], 0);
      expect(zerosOnes[2], 0);
      expect(zerosOnes[1], 1);
    });

    test('curry reversed', () {
      final zerosOnes = mapCR(toZero)(l);

      expect(l != zerosOnes, true);
      expect(zerosOnes.length, l.length);
      expect(zerosOnes[0], 0);
      expect(zerosOnes[2], 0);
      expect(zerosOnes[1], 1);
    });
  });
}
