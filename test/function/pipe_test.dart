import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/pipe.dart';

void main() {
  group('Pipe', () {
    final inc = (List<int> l) => l.map((int x) => x + 1).toList();
    final sum = (List<int> l) => l.fold(0, (int x, int y) => x + y);
    final by7 = (int v) => v / 7;
    final toInt = (double q) => q ~/ 1;
    final List<int> list = [0, 1, 2, 3, 4, 5];

    final fns = [inc, sum, by7, toInt];

    test('regular', () {
      final x = pipe<List<int>, int>(fns, list);
      expect(x, 3);
    });

    test('curry in order', () {
      final x = pipeC<List<int>, int>(fns)(list);
      expect(x, 3);
    });

    test('curry reversed', () {
      final x = pipeCR<List<int>, int>(list)(fns);
      expect(x, 3);
    });
  });
}
