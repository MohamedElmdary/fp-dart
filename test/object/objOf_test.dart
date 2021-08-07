import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/objOf.dart';

void main() {
  group('ObjOf', () {
    final k = 'key';
    final v = 'value';

    test('regular', () {
      final r = objOf(k, v);

      expect(r.containsKey(k), true);
      expect(r[k], v);
    });

    test('curry in order', () {
      final r = objOfC(k)(v);

      expect(r.containsKey(k), true);
      expect(r[k], v);
    });

    test('curry reversed', () {
      final r = objOfCR(v)(k);

      expect(r.containsKey(k), true);
      expect(r[k], v);
    });
  });
}
