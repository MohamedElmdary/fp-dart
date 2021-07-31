import 'package:fp/curry/curry2.dart';
import 'package:fp/fp.dart';

class _GtE extends Comparator {
  bool listC(x, y) => x.length >= y.length;
  bool mapC(Map x, Map y) => x.keys.length >= y.keys.length;
  bool numC(num x, num y) => x >= y;
  bool stringC(String x, String y) => x.compareTo(y) >= 0;
}

final gte = compare(_GtE());
final gteC = curry2(gte);
final gteCR = curry2R(gte);
