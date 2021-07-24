import 'package:fp/fp.dart';

double multiply<T extends num>(T x, T y) => x.toDouble() * y.toDouble();

CurryFn<T, double> multiplyC<T extends num>(T x) => (T y) => multiply(x, y);
