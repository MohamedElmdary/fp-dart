import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/compose.dart';

void main() {
  group('Compose', () {
    final inc = (List<int> l) => l.map((int x) => x + 1).toList();
    final sum = (List<int> l) => l.fold(0, (int x, int y) => x + y);
    final by7 = (int v) => v / 7;
    final toInt = (double q) => q ~/ 1;
    final List<int> list = [0, 1, 2, 3, 4, 5];

    final fns = [toInt, by7, sum, inc];

    test('regular', () {
      final x = compose<List<int>, int>(fns, list);
      expect(x, 3);
    });

    test('curry in order', () {
      final x = composeC<List<int>, int>(fns)(list);
      expect(x, 3);
    });

    test('curry reversed', () {
      final x = composeCR<List<int>, int>(list)(fns);
      expect(x, 3);
    });
  });
}
