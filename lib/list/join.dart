import 'package:fp/curry/curry2.dart';

String join(String spacer, List<String> list) {
  String res = "";
  int i = -1;
  while (++i < list.length) {
    res += list[i];
    if (i + 1 != list.length) {
      res += spacer;
    }
  }
  return res;
}

final joinC = curry2(join);
final joinCR = curry2R(join);
