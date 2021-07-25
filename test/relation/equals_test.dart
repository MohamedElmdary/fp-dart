import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/equals.dart' as eq;

void main() {
  test('Should match int.', () {
    // regular
    expect(eq.equals(1, 1), true);
    expect(eq.equals(1, 2), false);

    // curry
    final eq1 = eq.equalsC(1);
    expect(eq1(1), true);
    expect(eq1(2), false);
  });

  test('Should match double/double & double/int.', () {
    // regular
    expect(eq.equals(1.0, 1.0), true);
    expect(eq.equals(1.0, 1), true);
    expect(eq.equals(1.0, 2.0), false);
    expect(eq.equals(1.0, 2), false);

    // curry
    final eq1 = eq.equalsC(1.0);
    expect(eq1(1.0), true);
    expect(eq1(1), true);
    expect(eq1(2.0), false);
    expect(eq1(2), false);
  });

  test('Should match String.', () {
    // regular
    expect(eq.equals('x', 'x'), true);

    // curry
    final eqX = eq.equalsC('x');
    expect(eqX('x'), true);
  });

  test('Should match ByRef.', () {
    List list = ['x'];
    Map map = {};

    // regular
    expect(eq.equals(list, list), true);
    expect(eq.equals([], []), false);

    expect(eq.equals(map, map), true);
    expect(eq.equals(map, {}), false);

    // curry
    final eqList = eq.equalsC(list);
    expect(eqList([]), false);
    expect(eqList(list), true);

    final eqMap = eq.equalsC(map);
    expect(eqMap(map), true);
    expect(eqMap({}), false);
  });
}
