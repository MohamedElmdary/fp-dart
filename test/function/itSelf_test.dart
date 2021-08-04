import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/itSelf.dart';

void main() {
  group('ItSelf', () {
    final m = {};
    final s = new Set();
    final l = [];

    test('regular', () {
      expect(itSelf(1), 1);
      expect(itSelf(m), m);
      expect(itSelf(l), l);
      expect(itSelf(s), s);
    });
  });
}
