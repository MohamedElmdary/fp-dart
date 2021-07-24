double mean(List<double> list) {
  if (list.length == 0) {
    return double.nan;
  }
  return list.fold<double>(0, (total, current) => total + current) / list.length;
}
