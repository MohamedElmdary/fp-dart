import 'package:fp/types/curryFn.dart';

Return compose<Param, Return>(List<Function> list, Param arg) {
  dynamic res = arg;
  int i = list.length;
  while (--i >= 0) {
    res = list[i](res);
  }
  return res as Return;
}

CurryFn<Param, Return> composeC<Param, Return>(List<Function> list) {
  Return next(Param arg) {
    return compose(list, arg);
  }

  return next;
}

CurryFn<List<Function>, Return> composeCR<Param, Return>(Param arg) {
  Return next(List<Function> list) {
    return compose(list, arg);
  }

  return next;
}
