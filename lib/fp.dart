library fp;

import 'package:fp/object/project.dart';

// export 'types/types.dart';
// export 'curry/curry.dart';
// export 'math/math.dart';
// export 'list/list.dart';
// export 'relation/relation.dart';
// export 'function/function.dart';
// export 'logic/logic.dart';
// export 'object/object.dart';
// export 'utils/utils.dart';

void main() {
  const abby = {"name": 'Abby', "age": 7, "hair": 'blond', "grade": 2};
  const fred = {"name": 'Fred', "age": 12, "hair": 'brown', "grade": 7};
  const kids = [abby, fred];

  print(project(['name', 'grade'], kids));
}
