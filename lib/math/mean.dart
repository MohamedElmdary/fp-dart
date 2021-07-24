double mean<T extends num>(List<T> list) {
  if (list.length == 0) {
    return double.nan;
  }
  final total = list.fold<double>(0, (total, current) => total + current);
  return total / list.length;
}
