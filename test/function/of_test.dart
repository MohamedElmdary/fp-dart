import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/of.dart';

void main() {
  group('Of', () {
    test('regular', () {
      expect(of(1) is List<int>, true);
      expect(of({}) is List<Map>, true);
      expect(of([]) is List<List>, true);
      expect(of(new Set()) is List<Set>, true);
    });
  });
}
