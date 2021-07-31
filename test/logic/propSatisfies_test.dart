import 'package:flutter_test/flutter_test.dart';
import 'package:fp/logic/propSatisfies.dart';

void main() {
  group('PropSatisfies', () {
    const m = {
      'x': {
        'y': {'value': 5}
      },
      'a': {
        'b': {
          'c': {
            'value': [0, 1, 2, 3]
          }
        }
      },
      'q': {
        'w': [
          [],
          [
            {'v': 0}
          ]
        ]
      }
    };

    final eq5 = (v) => v == 5;
    final eq3 = (v) => v == 3;
    final eq0 = (v) => v == 0;

    test('regular', () {
      expect(propSatisfies(eq5, ['x', 'y', 'value'], m), true);
      expect(propSatisfies(eq3, ['a', 'b', 'c', 'value', -1], m), true);
      expect(propSatisfies(eq0, ['q', 'w', -1, 0, 'v'], m), true);
      expect(propSatisfies(eq5, [], m), false);
      expect(propSatisfies(eq5, ['notExist'], m), false);
    });

    test('curry in order', () {
      expect(propSatisfiesC(eq5)(['x', 'y', 'value'])(m), true);
      expect(propSatisfiesC(eq3)(['a', 'b', 'c', 'value', -1])(m), true);
      expect(propSatisfiesC(eq0)(['q', 'w', -1, 0, 'v'])(m), true);
      expect(propSatisfiesC(eq5)([])(m), false);
      expect(propSatisfiesC(eq5)(['notExist'])(m), false);
    });

    test('curry reversed', () {
      expect(propSatisfiesCR(m)(['x', 'y', 'value'])(eq5), true);
      expect(propSatisfiesCR(m)(['a', 'b', 'c', 'value', -1])(eq3), true);
      expect(propSatisfiesCR(m)(['q', 'w', -1, 0, 'v'])(eq0), true);
      expect(propSatisfiesCR(m)([])(eq5), false);
      expect(propSatisfiesCR(m)(['notExist'])(eq5), false);
    });
  });
}
