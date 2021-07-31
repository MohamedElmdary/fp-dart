import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/complement.dart';

void main() {
  group('Complement', () {
    const f = false;
    const t = true;

    test('regular', () {
      expect(complement(f), t);
      expect(complement(t), f);
    });
  });
}
