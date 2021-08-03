import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/endsWith.dart' as fp;

void main() {
  group('EndsWith', () {
    test('regular', () {
      expect(fp.endsWith('Hello', 'llo'), true);
      expect(fp.endsWith('Hello', 'lol'), false);
      expect(fp.endsWith('Hello', ''), true);
      expect(fp.endsWith([0, 1, 2], []), true);
      expect(fp.endsWith([0, 1, 2], [1, 2]), true);
      expect(fp.endsWith([0, 1, 3], [1]), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
