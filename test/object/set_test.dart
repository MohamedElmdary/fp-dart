import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/set.dart';

void main() {
  group('Props', () {
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

    test('regular', () {
      final newMap = set(['vars', 'x', 'y', 'values', -1, 'v'], 15, testMap);

      expect(testMap == newMap, false);
      expect(testMap['const'], newMap['const']);
      expect(testMap['const']!['values'], newMap['const']['values']);
      expect(testMap['vars']!['const'], newMap['vars']['const']);
      expect((testMap['vars']!['const']! as dynamic)['values'],
          newMap['vars']['const']["values"]);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
