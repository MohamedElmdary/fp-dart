import 'package:flutter_test/flutter_test.dart';
import 'dart:math' as math;
import 'package:fp/function/juxt.dart';

void main() {
  group('Juxt', () {
    final List<int> list = [3, 1, 2, 9, 7, 48, 3, 31];
    maxOrMin(int Function(int, int) fn) {
      int next(List<int> l) {
        int m = l.first;
        for (int i = 1; i < l.length; i++) {
          m = fn(m, list[i]);
        }
        return m;
      }

      return next;
    }

    final fns = [maxOrMin(math.min), maxOrMin(math.max)];

    test('regular', () {
      final values = juxt(fns, list);
      final min = values.first;
      final max = values.last;

      expect(min, 1);
      expect(max, 48);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
