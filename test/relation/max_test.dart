import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/max.dart';

void main() {
  group('Max', () {
    test('regular', () {
      expect(max([0, 1, 2, 3]), 3);
      expect(max([-5, 5, 99, 101, 3]), 101);
      expect(max([-5, 5, 99, 101, 101.1, 3]), 101.1);
    });
  });
}
