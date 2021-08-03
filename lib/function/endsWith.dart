import 'package:fp/curry/curry2.dart';

bool endsWith(dynamic w, dynamic idxable) {
  if ((!(w is String && idxable is String) &&
          !(w is List && idxable is List)) ||
      (w.length < idxable.length)) {
    return false;
  }

  int i = idxable.length;
  int j = w.length;

  while (--i >= 0 && --j >= 0) {
    if (idxable[i] != w[j]) {
      return false;
    }
  }

  return true;
}

final endsWithC = curry2(endsWith);
final endsWithCR = curry2R(endsWith);
