import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/copyList.dart';

void main() {
  group('CopyList', () {
    final m = [1, {}];
    test('regular', () {
      final c = copyList(m);

      expect(m != c, true);
      expect(m.first == c.first, true);
      expect(m.last == c.last, true);
    });
  });
}
