import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/compare.dart';

class _C extends Comparator {
  bool listC(x, y) => x.length == y.length;
  bool mapC(Map x, Map y) => x.keys.length == y.keys.length;
  bool numC(num x, num y) => x == y;
  bool stringC(String x, String y) => x.length == y.length;
}

void main() {
  group('Compare', () {
    final eqComparator = compare(_C());

    test('regular', () {
      expect(eqComparator(new Set(), new Set()), true);
      expect(eqComparator([], []), true);
      expect(eqComparator(0, 0), true);
      expect(eqComparator({}, {}), true);
      expect(eqComparator('', ''), true);
      expect(eqComparator(false, false), true);

      expect(eqComparator({0}, new Set()), false);
      expect(eqComparator([0], []), false);
      expect(eqComparator(1, 0), false);
      expect(eqComparator({'x': 'x'}, {}), false);
      expect(eqComparator('1', ''), false);
      expect(eqComparator(true, false), false);
    });
  });
}
