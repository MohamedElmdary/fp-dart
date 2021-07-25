import 'package:fp/types/curryFn.dart';

List<Return> pluck<Index, Source, Return>(Index index, List<Source> source) {
  if (!(source.first is List && index is int) &&
      !(source.first is Map && index is String)) {
    return [];
  }

  final List<Return> res = [];
  int i = -1;
  while (++i < source.length) {
    res.add((source[i] as dynamic)[index]);
  }
  return res;
}

CurryFn<List<Source>, List<Return>> pluckC<Index, Source, Return>(Index index) {
  List<Return> next(List<Source> source) {
    return pluck(index, source);
  }

  return next;
}

CurryFn<Index, List<Return>> pluckCR<Index, Source, Return>(
    List<Source> source) {
  List<Return> next(Index index) {
    return pluck(index, source);
  }

  return next;
}
