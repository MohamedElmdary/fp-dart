import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/concat.dart';

void main() {
  group('Concat', () {
    test('regular', () {
      expect(concat('x', 'y'), 'xy');

      final x = concat([1], [2]);
      expect(x.first, 1);
      expect(x.last, 2);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
