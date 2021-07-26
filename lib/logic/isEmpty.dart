bool isEmpty(dynamic value) {
  if (value is List || value is String) {
    return value.length == 0;
  }

  if (value is Map) {
    return value.keys.length == 0;
  }

  return false;
}
