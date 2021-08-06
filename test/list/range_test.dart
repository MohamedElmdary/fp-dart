import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/range.dart';

void main() {
  group('Range', () {
    test('regular', () {
      final x = range(0, 2);
      expect(x.length, 2);
      expect(x.first, 0);
      expect(x.last, 1);

      final y = range(2, 0);
      expect(y.length, 0);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
