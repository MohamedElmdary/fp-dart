import 'package:fp/curry/curry2.dart';

List<dynamic> juxt(List<Function> fns, List<dynamic> list) {
  final List<dynamic> res = [];
  int i = -1;
  while (++i < fns.length) {
    res.add(fns[i](list));
  }
  return res;
}

final juxtC = curry2(juxt);
final juxtCR = curry2R(juxt);
