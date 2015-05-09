## 3.5.4 関数の戻り値

<<<<<<< HEAD:md/manual/type-system-unification-function-return.md
関数の戻り値の型の単一化では[`Void`型](types-void.md)も関連しており、`Void`型での単一化のはっきりとした定義が必要です。`Void`型は型の不在を表し、あらゆる型が代入できません。`Dynamic`でさえも代入できません。つまり、関数が明示的に`Dynamic`を返すと定義されている場合、`Void`を返してはいけません。
=======
Unification of function return types may involve the [`Void`-type](types-void.md) and requires a clear definition of what unifies with `Void`. With `Void` describing the absence of a type, it is not assignable to any other type, not even `Dynamic`. This means that if a function is explicitly declared as returning `Dynamic`, it cannot return `Void`.
>>>>>>> english/master:output/HaxeManual/website/type-system-unification-function-return.md

その逆も同じです。関数の戻り値が`Void`であると宣言しているなら、`Dynamic`やその他すべての型は返すことができません。しかし、関数の型を代入する時のこの方向の単一化は許可されています。

```haxe
var func:Void->Void = function() return "foo";
```

<<<<<<< HEAD:md/manual/type-system-unification-function-return.md
右辺の関数ははっきりと`Void->String`型ですが、これを`Void->Void`型の`func`変数に代入することができます。これはコンパイラが戻り値は無関係だと安全に判断できるからで、その結果`Void`ではないあらゆる型を代入できるようになります。
=======
The right-hand function clearly is of type `Void->String`, yet we can assign it to the variable `func` of type `Void->Void`. This is because the compiler can safely assume that the return type is irrelevant, given that it could not be assigned to any non-`Void` type.
>>>>>>> english/master:output/HaxeManual/website/type-system-unification-function-return.md

---

Previous section: [単相](type-system-monomorphs.md)

Next section: [共通の基底型](type-system-unification-common-base-type.md)
