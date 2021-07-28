import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/deepCopy.dart';

void main() {
  test('Should copy all values.', () {
    final map = {
      "values": [
        {"v": 0}
      ],
      "sets": {
        "values": Set.from([0, 1, 2]),
      }
    };
    final copy = deepCopy(map);

    expect(map != copy, true);

    final v1 = map['values'] as List;
    final v2 = copy['values'] as List;
    expect(v1 != v2, true);
    expect(v1[0] != v2[0], true);

    final s1 = map['sets'] as Map;
    final s2 = copy['sets'] as Map;
    expect(s1 != s2, true);
    expect(s1['values'] != s2['values'], true);
  });
}
