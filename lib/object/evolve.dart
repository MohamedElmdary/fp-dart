import 'package:fp/curry/curry2.dart';

Map evolve(Map transformer, Map map) {
  dynamic next(dynamic evoler, dynamic object) {
    if (evoler is Function) {
      return evoler(object);
    }

    final Map res = {};
    object.keys.forEach((key) {
      res[key] = (evoler as Map).containsKey(key)
          ? next(evoler[key], object[key])
          : object[key];
    });
    return res;
  }

  return next(transformer, map);
}

final evolveC = curry2(evolve);
final evolveCR = curry2R(evolve);
