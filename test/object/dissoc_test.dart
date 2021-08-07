import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/dissoc.dart';

void main() {
  group('Dissoc', () {
    final m = {'a': 1, 'b': 2, 'c': 3};

    test('regular', () {
      final r = dissoc('c', m);

      expect(m != r, true);
      expect(r.containsKey('c'), false);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
