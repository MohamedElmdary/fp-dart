import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/evolve.dart';

void main() {
  group('Evolve', () {
    final d = (int x) => x * 2;
    final t = (int x) => x * 3;
    final l = [1];
    final f = (_) => l;

    final Map m = {
      'a': 1,
      'b': {'value': 3},
      'x': {
        'y': {'values': []}
      }
    };

    final Map from = {
      'a': d,
      'b': {'value': t},
      'x': {
        'y': {'values': f}
      }
    };
    test('regular', () {
      final r = evolve(from, m);

      expect(r != m, true);
      expect(r['a'], 2);
      expect(r['b']['value'], 9);
      expect(r['x']['y']['values'], l);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
