import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/eqBy.dart';

void main() {
  group('EqBy', () {
    final f = 5;
    final m = {'v': 5};
    final isEqual = (v) => v is Map ? v['v'] : v;

    test('regular', () {
      expect(eqBy(isEqual, f, m), true);
      expect(eqBy((v) => v, 5, 5), true);
      expect(eqBy((v) => v, 4.5, 5), false);
      expect(eqBy((v) => v.toString(), double.nan, double.nan), true);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
