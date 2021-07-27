import 'package:fp/curry/curry2.dart';

List removeAt(int index, List list) {
  int k = index;
  if (k < 0) {
    k = list.length + k;
  }

  final res = list.sublist(0);
  res.removeAt(k);

  return res;
}

final removeAtC = curry2(removeAt);
final removeAtCR = curry2R(removeAt);
