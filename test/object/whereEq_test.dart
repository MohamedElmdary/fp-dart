import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/whereEq.dart';

void main() {
  group('Where', () {
    final e = {"a": 1, "b": 2};
    final m1 = {"a": 1};
    final m2 = {"a": 1, "b": 2};
    final m3 = {"a": 1, "b": 2, "c": 3};
    final m4 = {"a": 1, "b": 1};

    test('regular', () {
      expect(whereEq(e, m1), false);
      expect(whereEq(e, m2), true);
      expect(whereEq(e, m3), true);
      expect(whereEq(e, m4), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
