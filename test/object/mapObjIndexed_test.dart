import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/mapObjIndexed.dart';

void main() {
  group('MapObjIndexed', () {
    final m = {'x': 1, 'y': 5, 'z': 7};

    test('regular', () {
      final r = mapObjIndexed((index, key, value) {
        return '$index $key $value';
      }, m);

      expect(r.length, 3);
      expect(r.containsKey('x'), true);
      expect(r['x'], '0 x 1');
      expect(r.containsKey('y'), true);
      expect(r['y'], '1 y 5');
      expect(r.containsKey('z'), true);
      expect(r['z'], '2 z 7');
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
