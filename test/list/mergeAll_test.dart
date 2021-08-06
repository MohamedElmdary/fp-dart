import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/mergeAll.dart';

void main() {
  group('MergeAll', () {
    final l = [
      {"foo": 1},
      {"bar": 2},
      {"baz": 3}
    ];

    test('regular', () {
      final r = mergeAll(l);

      expect(r.keys.length, 3);

      expect(r.containsKey('foo'), true);
      expect(r['foo'], 1);

      expect(r.containsKey('bar'), true);
      expect(r['bar'], 2);

      expect(r.containsKey('baz'), true);
      expect(r['baz'], 3);
    });
  });
}
