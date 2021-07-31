import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/isEmpty.dart' as fp;

void main() {
  group('IsEmpty', () {
    final isE = fp.isEmpty;

    test('regular', () {
      expect(isE(new Set()), true);
      expect(isE([]), true);
      expect(isE({}), true);
      expect(isE(''), true);

      expect(isE(null), false);
      expect(isE(Set.from(['test'])), false);
      expect(isE(['test']), false);
      expect(isE({'test': 'test'}), false);
      expect(isE('test'), false);
    });
  });
}
