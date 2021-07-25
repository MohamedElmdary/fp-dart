import 'package:flutter_test/flutter_test.dart';
import 'package:fp/math/mean.dart';

void main() {
  test('Should calc mean of the list.', () {
    final List<int> list = [2, 7, 9];

    expect(mean(list), 6);
    expect(mean([]).toString(), "NaN");
  });
}
