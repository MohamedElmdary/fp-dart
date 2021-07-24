import 'multiply.dart';

double product<T extends num>(List<T> list) => list.fold(1, multiply);
