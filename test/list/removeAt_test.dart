import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/removeAt.dart';

void main() {
  group('RemoveAt', () {
    final l1 = ['test'];
    final l2 = [1, 2];

    test('regular', () {
      expect(() => removeAt(2, l1), throwsRangeError);

      final rL1 = removeAt(0, l1);
      expect(l1 != rL1, true);
      expect(rL1.length, 0);

      final rL2 = removeAt(1, l2);
      expect(l2 != rL2, true);
      expect(rL2.length, 1);
      expect(rL2.length, 1);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
