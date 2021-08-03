import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/tap.dart';

void main() {
  group('DeepEqual', () {
    const m = {};
    const l = [];

    test('regular', () {
      expect(tap((x) {}, 1), 1);
      expect(tap((x) {}, m), m);
      expect(tap((x) {}, l), l);
    });

    test('curry in order', () {
      expect(tapC((x) {})(1), 1);
      expect(tapC((x) {})(m), m);
      expect(tapC((x) {})(l), l);
    });
  });
}
