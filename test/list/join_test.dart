import 'package:flutter_test/flutter_test.dart';
import 'package:fp/list/join.dart';

void main() {
  group('Join', () {
    final l = ['H', 'e', 'l', 'l', 'o'];

    test('regular', () {
      expect(join('', l), 'Hello');
      expect(join('=', l), 'H=e=l=l=o');
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
