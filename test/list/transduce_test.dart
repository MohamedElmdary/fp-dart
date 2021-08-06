import 'package:flutter_test/flutter_test.dart';
import 'package:fp/fp.dart' as fp;

void main() {
  group('Transduce', () {
    final transducer =
        fp.composeC<List<double>, List<double>>([fp.mapCR(fp.inc)]);
    final double Function(double, double) reducer = fp.add;
    final double initial = 0;
    final List<double> list = [1, 2, 3, 4];

    test('regular', () {
      final v = fp.transduce(transducer, reducer, initial, list);

      expect(v, 14);
    });

    test('curry in order', () {
      final v = fp.transduceC<double, double, double>(transducer)(reducer)(
          initial)(list);

      expect(v, 14);
    });

    test('curry reversed', () {
      final v = fp.transduceCR<double, double, double>(list)(initial)(reducer)(
          transducer);

      expect(v, 14);
    });
  });
}
