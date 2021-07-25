import 'package:fp/types/curryFn.dart';

mixin ItoMap {
  Map<String, dynamic> toMap();
}

R prop<R>(String property, dynamic object) {
  if (object is Map) {
    return object[property];
  }

  if (object is ItoMap) {
    return object.toMap()[property];
  }

  final msg = 'Expected `Map` or `ItoMap` but found ${object.runtimeType}.';
  throw Exception(msg);
}

CurryFn<dynamic, R> propC<R>(String property) {
  R next(dynamic object) {
    return prop(property, object);
  }

  return next;
}

CurryFn<String, R> propCR<R>(dynamic object) {
  R next(String property) {
    return prop(property, object);
  }

  return next;
}
