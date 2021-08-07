import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/props.dart';

void main() {
  group('Props', () {
    final s = new Set();
    final m = {'a': 1, 's': s};

    test('regular', () {
      final r = props(['a', 's'], m);

      expect(r.length, 2);
      expect(r.first, 1);
      expect(r.last, s);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
