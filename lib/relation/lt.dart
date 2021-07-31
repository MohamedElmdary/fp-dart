import 'package:fp/curry/curry2.dart';
import 'gte.dart';

bool lt(dynamic x, dynamic y) {
  return !gte(x, y);
}

final ltC = curry2(lt);
final ltCR = curry2R(lt);
