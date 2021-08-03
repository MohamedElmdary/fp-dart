import 'package:flutter_test/flutter_test.dart';
import 'package:fp/relation/innerJoin.dart';

class _U {
  final int id;
  final String name;

  const _U({required this.id, required this.name});
}

void main() {
  group('InnerJoin', () {
    final byId = (_U item, id) => item.id == id;
    final users = [
      _U(id: 824, name: 'Richie Furay'),
      _U(id: 956, name: 'Dewey Martin'),
      _U(id: 313, name: 'Bruce Palmer'),
      _U(id: 456, name: 'Stephen Stills'),
      _U(id: 177, name: 'Neil Young')
    ];
    final ids = [313, 456];

    test('regular', () {
      final res = innerJoin(byId, users, ids);

      expect(res.length, 2);
      expect(res.first, users[2]);
      expect(res.last, users[3]);
    });

    test('curry in order', () {
      final res = innerJoinC(byId)(users)(ids);

      expect(res.length, 2);
      expect(res.first, users[2]);
      expect(res.last, users[3]);
    });

    test('curry reversed', () {
      final res = innerJoinCR<_U, int>(ids)(users)(byId);

      expect(res.length, 2);
      expect(res.first, users[2]);
      expect(res.last, users[3]);
    });
  });
}
