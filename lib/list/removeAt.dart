import 'package:fp/curry/curry2.dart';
import 'package:fp/list/copyList.dart';

List removeAt(int index, List list) {
  int k = index;
  if (k < 0) {
    k = list.length + k;
  }

  final res = copyList(list);
  res.removeAt(k);

  return res;
}

final removeAtC = curry2(removeAt);
final removeAtCR = curry2R(removeAt);
