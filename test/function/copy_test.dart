import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/copy.dart';

void main() {
  group('Compare', () {
    final m = {
      'l': [
        {'v': 5}
      ],
      's': new Set(),
      'm': {},
    };

    final cM = copy(m);
    final cL = copy(m['l']);

    test('regular', () {
      expect(m != cM, true);
      expect(m['l'] == cM['l'], true);
      expect(m['s'] == cM['s'], true);
      expect(m['m'] == cM['m'], true);

      expect(m['l'] != cL, true);
      expect((m['l'] as List).first == cL.first, true);
    });
  });
}
