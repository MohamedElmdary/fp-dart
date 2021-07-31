import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/cond.dart';

void main() {
  group('Cond', () {
    const List<List<dynamic Function(double)>> empty = [];
    final conditions = [
      [
        (double v) => v == 0,
        (double t) => 'water freezes at 0°C',
      ],
      [
        (double v) => v == 100,
        (double t) => 'water boils at 100°C',
      ],
      [
        (double v) => true,
        (double t) => 'nothing special happens at $t°C',
      ],
    ];

    test('regular', () {
      expect(cond(empty, 0.0), null);
      expect(cond(conditions, 0.0), 'water freezes at 0°C');
      expect(cond(conditions, 100.0), 'water boils at 100°C');
      expect(cond(conditions, 73.5), 'nothing special happens at 73.5°C');
    });

    test('curry in order', () {
      expect(condC(empty)(0), null);
      expect(condC(conditions)(0), 'water freezes at 0°C');
      expect(condC(conditions)(100), 'water boils at 100°C');
      expect(condC(conditions)(73.5), 'nothing special happens at 73.5°C');
    });

    test('curry reversed', () {
      expect(condCR(0.0)(empty), null);
      expect(condCR(0.0)(conditions), 'water freezes at 0°C');
      expect(condCR(100.0)(conditions), 'water boils at 100°C');
      expect(condCR(73.5)(conditions), 'nothing special happens at 73.5°C');
    });
  });
}
