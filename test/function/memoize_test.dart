import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/memoize.dart';

void main() {
  Duration calcTime(dynamic fn, dynamic arg) {
    final stopwatch = Stopwatch()..start();
    fn(arg);
    return stopwatch.elapsed;
  }

  int fibo1(int n) {
    if (n <= 2) return n;

    return fibo1(n - 1) + fibo1(n - 2);
  }

  dynamic fibo2;
  fibo2 = memoize((int n) {
    if (n <= 2) return n;

    return fibo2(n - 1) + fibo2(n - 2);
  });

  group('Memoize', () {
    test('regular', () {
      expect(calcTime(fibo1, 40).inSeconds > 1, true);
      expect(calcTime(fibo2, 40).inSeconds < 1, true);
    });
  });
}
