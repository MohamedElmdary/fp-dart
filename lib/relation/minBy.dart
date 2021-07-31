import 'package:fp/curry/curry2.dart';
import 'package:fp/list/list.dart';

num minBy(
  Function(num) transformer,
  List<num> nums,
) {
  if (nums.length == 0) {
    return double.nan;
  }

  return reduce<num, num>(
    (num res, num current) {
      if (transformer(res) > transformer(current)) {
        return current;
      }

      return res;
    },
    nums.first,
    nums,
  );
}

final minByC = curry2(minBy);
final minByCR = curry2R(minBy);
