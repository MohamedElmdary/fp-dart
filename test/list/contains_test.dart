import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/contains.dart' as fp;

void main() {
  group('Contains', () {
    final q = {};
    final x = [0, 1, 2, 3, q];
    test('regular', () {
      expect(fp.contains(x, q), true);
      expect(fp.contains(x, 2), true);
      expect(fp.contains(x, 3), true);

      expect(fp.contains(x, {}), false);
      expect(fp.contains(x, 5), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
