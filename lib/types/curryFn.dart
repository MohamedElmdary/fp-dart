typedef CurryFn<Parameter, Return> = Return Function(Parameter);

typedef Curry2Fn<P1, P2, R> = CurryFn<P1, CurryFn<P2, R>>;
typedef Curry3Fn<P1, P2, P3, R> = CurryFn<P1, CurryFn<P2, CurryFn<P3, R>>>;
typedef Curry4Fn<P1, P2, P3, P4, R> = CurryFn<P1, CurryFn<P2, CurryFn<P3, CurryFn<P4, R>>>>;
typedef Curry5Fn<P1, P2, P3, P4, P5, R> = CurryFn<P1, CurryFn<P2, CurryFn<P3, CurryFn<P4, CurryFn<P5, R>>>>>;