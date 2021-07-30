List<List> toPairs(Map object) {
  final List<List> res = [];
  object.forEach((key, value) {
    res.add([key, value]);
  });
  return res;
}
