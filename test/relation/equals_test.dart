import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/equals.dart' as fp;

void main() {
  group('Equals', () {
    final eq = fp.equals;
    final eqC = fp.equalsC;

    final m = {};
    final s = new Set();
    final l = [];

    test('regular', () {
      expect(eq(m, m), true);
      expect(eq(m, {}), false);
      expect(eq(l, l), true);
      expect(eq(l, []), false);
      expect(eq(s, s), true);
      expect(eq(s, new Set()), false);
      expect(eq(1, 1), true);
      expect(eq(1, 0), false);
      expect(eq(double.nan.toString(), "NaN"), true);
      expect(eq(double.nan, double.nan), false);
      expect(eq(true, true), true);
      expect(eq(true, false), false);
    });

    test('curry in order', () {
      expect(eqC(m)(m), true);
      expect(eqC(m)({}), false);
      expect(eqC(l)(l), true);
      expect(eqC(l)([]), false);
      expect(eqC(s)(s), true);
      expect(eqC(s)(new Set()), false);
      expect(eqC(1)(1), true);
      expect(eqC(1)(0), false);
      expect(eqC(double.nan.toString())("NaN"), true);
      expect(eqC(double.nan)(double.nan), false);
      expect(eqC(true)(true), true);
      expect(eqC(true)(false), false);
    });
  });
}
