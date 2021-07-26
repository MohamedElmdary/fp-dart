import 'package:fp/list/list.dart';
import 'package:fp/types/curryFn.dart';

R transduce<T, Q, R>(
  List<Q> Function(List<T>) transducer,
  R Function(R, Q) reducer,
  R initValue,
  List<T> list,
) {
  return reduce(reducer, initValue, transducer(list));
}

Curry3Fn<R Function(R, Q), R, List<T>, R> transduceC<T, Q, R>(
  List<Q> Function(List<T>) transducer,
) {
  Curry2Fn<R, List<T>, R> next(R Function(R, Q) reducer) {
    CurryFn<List<T>, R> next(R initValue) {
      R next(List<T> list) {
        return transduce(
          transducer,
          reducer,
          initValue,
          list,
        );
      }

      return next;
    }

    return next;
  }

  return next;
}

typedef TransduceCR<T, Q, R>
    = Curry3Fn<R, R Function(R, Q), List<Q> Function(List<T>), R>;

TransduceCR<T, Q, R> transduceCR<T, Q, R>(
  List<T> list,
) {
  Curry2Fn<R Function(R, Q), List<Q> Function(List<T>), R> next(R initValue) {
    CurryFn<List<Q> Function(List<T>), R> next(R Function(R, Q) reducer) {
      R next(List<Q> Function(List<T>) transducer) {
        return transduce(
          transducer,
          reducer,
          initValue,
          list,
        );
      }

      return next;
    }

    return next;
  }

  return next;
}
