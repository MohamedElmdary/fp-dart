List<T> drop<T>(List<T> list, int length) {
  if (length >= list.length) {
    return [];
  }
  return list.sublist(length);
}
