import 'package:fp/fp.dart';

double subtract<X extends num, Y extends num>(X x, Y y) =>
    x.toDouble() - y.toDouble();

CurryFn<Y, double> subtractC<X extends num, Y extends num>(X x) =>
    (Y y) => subtract(x, y);

CurryFn<X, double> subtractCR<X extends num, Y extends num>(Y y) =>
    (X x) => subtract(x, y);
