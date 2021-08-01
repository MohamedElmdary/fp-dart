import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/differenceWith.dart';

class _U {
  final int id;
  final String name;

  const _U({required this.id, required this.name});
}

void main() {
  final u0 = _U(id: 0, name: 'user 0');
  final u1 = _U(id: 1, name: 'user 1');
  final u2 = _U(id: 2, name: 'user 2');
  final u3 = _U(id: 3, name: 'user 3');

  bool byId(_U x, _U y) => x.id == y.id;

  group('DifferenceWith', () {
    test('regular', () {
      final res = differenceWith(byId, [u0, u1, u2, u3], [u1, u2]);

      expect(res.length, 2);
      expect(res.first, u0);
      expect(res.last, u3);
    });

    test('curry in order', () {
      final res = differenceWithC(byId)([u0, u1, u2, u3])([u1, u2]);

      expect(res.length, 2);
      expect(res.first, u0);
      expect(res.last, u3);
    });

    test('curry reversed', () {
      final res = differenceWithCR<_U, _U>([u1, u2])([u0, u1, u2, u3])(byId);

      expect(res.length, 2);
      expect(res.first, u0);
      expect(res.last, u3);
    });
  });
}
