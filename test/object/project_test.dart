import 'package:flutter_test/flutter_test.dart';
import 'package:fp/object/project.dart';

void main() {
  group('Project', () {
    final list = [
      {"name": 'Abby', "age": 7, "hair": 'blond', "grade": 2},
      {"name": 'Fred', "age": 12, "hair": 'brown', "grade": 7}
    ];

    test('regular', () {
      final r = project(['name', 'grade'], list);

      expect(r != list, true);
      expect(r.length, 2);

      final f = r.first;
      expect(f.length, 2);
      expect(f.containsKey('name'), true);
      expect(f['name'], 'Abby');
      expect(f.containsKey('grade'), true);
      expect(f['grade'], 2);

      final l = r.last;
      expect(l.length, 2);
      expect(l.containsKey('name'), true);
      expect(l['name'], 'Fred');
      expect(l.containsKey('grade'), true);
      expect(l['grade'], 7);
    });

    /// skipped curry & curry reversed (using curry2 function).
  });
}
