import 'package:fp/curry/curry3.dart';

Map mergeWithKey(
  Function(dynamic, dynamic, dynamic) transformer,
  Map object,
  Map mergeFrom,
) {
  dynamic next(dynamic obj, dynamic from) {
    final Map res = {};

    obj.keys.forEach((k) {
      if (!from.containsKey(k)) {
        res[k] = obj[k];
        return;
      }

      res[k] = !(obj[k] is Map)
          ? transformer(k, obj[k], from[k])
          : next(obj[k], from[k]);
    });

    return res;
  }

  return next(object, mergeFrom);
}

final mergeWithKeyC = curry3(mergeWithKey);
final mergeWithKeyCR = curry3R(mergeWithKey);
