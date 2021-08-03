import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/min.dart';

void main() {
  group('Min', () {
    test('regular', () {
      expect(min([0, 1, 2, 3]), 0);
      expect(min([-5, 5, 99, 101, 3]), -5);
      expect(min([-5, -5.5, 99, 101, 101.1, 3]), -5.5);
    });
  });
}
