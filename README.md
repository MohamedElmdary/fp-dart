# fp dart

A functional programming lib in dart highly inspired by ramda.js .

## Note

Most functions in fp_dart has 3 versions (regular / curry in order / curry reversed)  
for e.g `allPass` Function:

-   `allPass` is regular
-   `allPassC` is curry in order
-   `allPassCR` is curry reversed

## why 3 versions ?

Because dart language doesn't offer a way for overloading function (issue [1122](https://github.com/dart-lang/language/issues/1122)) other than using `dynamic` everywhere in code that's why I thought it would make sense to have 3 versions with types.

## Docs

-   [Logic Lib](/docs/logic)
    -   [allPass](/docs/logic/allPass.md)
    -   [and](/docs/logic/and.md)
    -   [anyPass](/docs/logic/anyPass.md)
    -   [both](/docs/logic/both.md)
    -   [complement](/docs/logic/complement.md)
    -   [cond](/docs/logic/cond.md)
    -   [defaultTo](/docs/logic/defaultTo.md)
    -   [isEmpty](/docs/logic/isEmpty.md)
    -   [not](/docs/logic/not.md)
    -   [of](/docs/logic/of.md)
    -   [propSatisfies](/docs/logic/propSatisfies.md)
    -   [toBool](/docs/logic/toBool.md)
    -   [unless](/docs/logic/unless.md)
    -   [until](/docs/logic/until.md)
    -   [xor](/docs/logic/xor.md)
-   [Relation Lib](/docs/relation)
    -   [equals](/docs/relation/equals.md)
    -   [countBy](/docs/relation/countBy.md)
    -   [difference](/docs/relation/difference.md)
    -   [differenceWith](/docs/relation/differenceWith.md)
    -   [eqBy](/docs/relation/eqBy.md)
    -   [gt](/docs/relation/gt.md)
    -   [gte](/docs/relation/gte.md)
    -   [lt](/docs/relation/lt.md)
    -   [lte](/docs/relation/lte.md)
    -   [isNan](/docs/relation/isNan.md)
    -   [max](/docs/relation/max.md)
    -   [maxBy](/docs/relation/maxBy.md)
    -   [min](/docs/relation/min.md)
    -   [minBy](/docs/relation/minBy.md)
    -   [innerJoin](/docs/relation/innerJoin.md)
    -   [pathEq](/docs/relation/pathEq.md)
-   [Math Lib](/docs/math)
    -   [add](/docs/math/add.md)
    -   [dec](/docs/math/dec.md)
    -   [divide](/docs/math/divide.md)
    -   [inc](/docs/math/inc.md)
    -   [mean](/docs/math/mean.md)
    -   [modulo](/docs/math/modulo.md)
    -   [multiply](/docs/math/multiply.md)
    -   [negate](/docs/math/negate.md)
    -   [product](/docs/math/product.md)
    -   [subtract](/docs/math/subtract.md)
    -   [median](/docs/math/median.md)
-   [List Lib](/docs/list)
    -   [all](/docs/list/all.md)
    -   [any](/docs/list/any.md)
    -   [append](/docs/list/append.md)
    -   [concat](/docs/list/concat.md)
    -   [contains](/docs/list/contains.md)
    -   [copyList](/docs/list/copyList.md)
    -   [drop](/docs/list/drop.md)
    -   [dropWhile](/docs/list/dropWhile.md)
    -   [dropLast](/docs/list/dropLast.md)
    -   [dropLastWhile](/docs/list/dropLastWhile.md)
    -   [filter](/docs/list/filter.md)
    -   [map](/docs/list/map.md)
    -   [reduce](/docs/list/reduce.md)
    -   [join](/docs/list/join.md)
    -   [find](/docs/list/find.md)
    -   [findIndex](/docs/list/findIndex.md)
    -   [findLast](/docs/list/findLast.md)
    -   [findLastIndex](/docs/list/findLastIndex.md)
    -   [flatten](/docs/list/flatten.md)
    -   [range](/docs/list/range.md)
    -   [forEach](/docs/list/forEach.md)
    -   [fromPairs](/docs/list/fromPairs.md)
    -   [groupBy](/docs/list/groupBy.md)
    -   [insertAll](/docs/list/insertAll.md)
    -   [intersperse](/docs/list/intersperse.md)
    -   [invertList](/docs/list/invertList.md)
    -   [mergeAll](/docs/list/mergeAll.md)
    -   [partition](/docs/list/partition.md)
    -   [pluck](/docs/list/pluck.md)
    -   [reduceRight](/docs/list/reduceRight.md)
    -   [removeAt](/docs/list/removeAt.md)
    -   [transduce](/docs/list/transduce.md)
    -   [xprod](/docs/list/xprod.md)
    -   [zip](/docs/list/zip.md)
-   [Object Lib](/docs/object)
    -   [assoc](/docs/object/assoc.md)
    -   [copyMap](/docs/object/copyMap.md)
    -   [copySet](/docs/object/copySet.md)
    -   [deepMerge](/docs/object/deepMerge.md)
    -   [dissoc](/docs/object/dissoc.md)
    -   [dissocPath](/docs/object/dissocPath.md)
    -   [eqProps](/docs/object/eqProps.md)
    -   [evolve](/docs/object/evolve.md)
    -   [has](/docs/object/has.md)
    -   [hasPath](/docs/object/hasPath.md)
    -   [invert](/docs/object/invert.md)
    -   [keys](/docs/object/keys.md)
    -   [mapObjIndexed](/docs/object/mapObjIndexed.md)
    -   [mergeWithKey](/docs/object/mergeWithKey.md)
    -   [objOf](/docs/object/objOf.md)
    -   [omit](/docs/object/omit.md)
    -   [omitPaths](/docs/object/omitPaths.md)
    -   [path](/docs/object/path.md)
    -   [paths](/docs/object/paths.md)
    -   [pick](/docs/object/pick.md)
    -   [pickAll](/docs/object/pickAll.md)
    -   [pickBy](/docs/object/pickBy.md)
    -   [project](/docs/object/project.md)
    -   [prop](/docs/object/prop.md)
    -   [props](/docs/object/props.md)
    -   [set](/docs/object/set.md)
    -   [toPairs](/docs/object/toPairs.md)
    -   [values](/docs/object/values.md)
    -   [where](/docs/object/where.md)
    -   [whereEq](/docs/object/whereEq.md)
-   [Curry Lib](/docs/curry)
    -   [Curry2](/docs/curry/Curry2.md)
    -   [Curry3](/docs/curry/Curry3.md)
    -   [Curry4](/docs/curry/Curry4.md)
    -   [Curry5](/docs/curry/Curry5.md)

## Credits

-   [Mohamed Rabie Elmdary](https://github.com/MohamedElmdary)
