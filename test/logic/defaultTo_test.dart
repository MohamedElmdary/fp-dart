import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/defaultTo.dart';

void main() {
  group('DefaultTo', () {
    final m = {};
    final l = [];
    final s = new Set();

    test('regular', () {
      expect(defaultTo('default', null), 'default');
      expect(defaultTo('default', double.nan), 'default');
      expect(defaultTo('default', false), false);
      expect(defaultTo('default', 'str'), 'str');
      expect(defaultTo('default', m), m);
      expect(defaultTo('default', s), s);
      expect(defaultTo('default', l), l);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
