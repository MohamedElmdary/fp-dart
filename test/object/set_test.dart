import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/set.dart';

void main() {
  test('Should create a deep copy for the targeted value only.', () {
    final testMap = {
      "const": {
        "values": [0, 1, 2]
      },
      "vars": {
        "x": {
          "y": {
            "values": [
              {"v": 5},
              {"v": 10}
            ]
          }
        },
        "const": {
          "values": [0, 1, 2]
        }
      }
    };

    final newMap = set(['vars', 'x', 'y', 'values', -1, 'v'], 15, testMap);

    expect(testMap == newMap, false);
    expect(testMap['const'] == newMap['const'], true);
  });
}
