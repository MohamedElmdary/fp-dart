import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/mergeWithKey.dart';
import 'package:fp/list/concat.dart';

void main() {
  group('MergeWithKey', () {
    final m = {
      "a": true,
      "thing": 'foo',
      "values": [10, 20]
    };
    final from = {
      "b": true,
      "thing": 'bar',
      "values": [15, 35]
    };

    test('regular', () {
      final r = mergeWithKey((key, v1, v2) {
        return key == 'values' ? concat(v1, v2) : v2;
      }, m, from);

      expect(r.length, 4);
      expect(r.containsKey('a'), true);
      expect(r.containsKey('b'), true);
      expect(r.containsKey('thing'), true);
      expect(r.containsKey('values'), true);

      expect(r['a'], true);
      expect(r['b'], true);
      expect(r['thing'], 'bar');

      final List values = r['values'];
      expect(values.length, 4);
      expect(values[0], 10);
      expect(values[1], 20);
      expect(values[2], 15);
      expect(values[3], 35);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
