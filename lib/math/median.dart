import 'modulo.dart';

double median(List<double> list) {
  if (list.length == 0) {
    return double.nan;
  }
  
  final List<double> clone = list.sublist(0);
  clone.sort((a, b) => a > b ? 1 : -1);

  if (modulo(clone.length.toDouble(), 2) == 0) {
    final int i = clone.length ~/ 2;
    return (clone[i] + clone[i - 1]) / 2;
  }

  return clone[(clone.length / 2).floor()];
}
