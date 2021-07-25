import 'package:fp/types/curryFn.dart';

Return pipe<Param, Return>(List<Function> list, Param arg) {
  return list.fold(arg, (res, fn) => fn(res)) as Return;
}

CurryFn<Param, Return> pipeC<Param, Return>(List<Function> list) {
  Return next(Param arg) {
    return pipe(list, arg);
  }

  return next;
}

CurryFn<List<Function>, Return> pipeCR<Param, Return>(Param arg) {
  Return next(List<Function> list) {
    return pipe(list, arg);
  }

  return next;
}
