import 'package:fp/curry/curry2.dart';
import 'gt.dart';

bool lte(dynamic x, dynamic y) {
  return !gt(x, y);
}

final lteC = curry2(lte);
final lteCR = curry2R(lte);
