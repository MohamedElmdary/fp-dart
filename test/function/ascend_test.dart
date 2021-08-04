import 'package:flutter_test/flutter_test.dart';
import 'package:fp/function/ascend.dart';

class _U {
  final int id;
  final String name;
  const _U({required this.id, required this.name});
}

void main() {
  group('Ascend', () {
    final byId = (_U u) => u.id;
    const u1 = _U(id: 1, name: 'Mohamed');
    const u2 = _U(id: 2, name: 'Ahmed');

    test('regular', () {
      expect(ascend(byId, u1, u2), -1);
      expect(ascend(byId, u2, u1), 1);
    });

    test('curry in order', () {
      expect(ascendC(byId)(u1, u2), -1);
      expect(ascendC(byId)(u2, u1), 1);
    });
  });
}
