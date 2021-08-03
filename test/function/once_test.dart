import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/once.dart';

void main() {
  group('Once', () {
    final addOneOnce = once((num x) => x + 1);

    test('regular', () {
      expect(addOneOnce(10), 11);
      expect(addOneOnce(13), 11);
      expect(addOneOnce(15), 11);
      expect(addOneOnce(105.5), 11);
      expect(addOneOnce(27), 11);
    });
  });
}
