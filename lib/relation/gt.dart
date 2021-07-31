import 'package:fp/curry/curry2.dart';
import 'package:fp/fp.dart';

class _Gt extends Comparator {
  bool listC(x, y) => x.length > y.length;
  bool mapC(Map x, Map y) => x.keys.length > y.keys.length;
  bool numC(num x, num y) => x > y;
  bool stringC(String x, String y) => x.compareTo(y) == 1;
}

final gt = compare(_Gt());
final gtC = curry2(gt);
final gtCR = curry2R(gt);
