import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/constant.dart';

void main() {
  group('EndsWith', () {
    final five = constant(5);

    test('regular', () {
      expect(five(5), 5);
      expect(five({}), 5);
      expect(five([]), 5);
      expect(five(new Set()), 5);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
