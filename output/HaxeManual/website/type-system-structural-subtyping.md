## 3.5.2 構造的部分型付け

> ##### Define: 構造的部分型付け
>
> 構造的部分型付けは、同じ構造を持つ型の暗黙の関係を示します。

<<<<<<< HEAD:md/manual/type-system-structural-subtyping.md
Haxeでは、構造的部分型付けはクラスインスタンスを構造体に代入するときのみ可能です。以下に、[Haxe標準ライブラリ](std.md)の`Lambda`の一部の例を挙げます。
=======
Structural sub-typing in Haxe is allowed when unifying

* a [class](types-class-instance.md) with a [structure](types-anonymous-structure.md) and
* a structure with another structure.

The following example is part of the `Lambda` class of the [Haxe Standard Library](std.md):
>>>>>>> english/master:output/HaxeManual/website/type-system-structural-subtyping.md

```haxe
public static function empty<T>(it : Iterable<T>):Bool {
	return !it.iterator().hasNext();
}
```
<<<<<<< HEAD:md/manual/type-system-structural-subtyping.md

`empty`メソッドは、`Iterable`が要素を持つかをチェックします。この目的では、引数の型について、それが列挙可能(Iterable)であること以外に何も知る必要がありません。Haxe標準ライブラリにはたくさんある`Iterable<T>`で単一化できる型すべてで、これを呼び出すことができるわけです。この種の型付けは非常に便利ですが、静的ターゲットでは大量に使うとパフォーマンスの低下を招くことがあります。詳しくは[パフォーマンスへの影響](types-structure-performance.md)に書かれています。
=======
The `empty`-method checks if an `Iterable` has an element. For this purpose, it is not necessary to know anything about the argument type other than the fact that it is considered an iterable. This allows calling the `empty`-method with any type that unifies with `Iterable<T>` which applies to a lot of types in the Haxe Standard Library.

This kind of typing can be very convenient but extensive use may be detrimental to performance on static targets, which  is detailed in [Impact on Performance](types-structure-performance.md).
>>>>>>> english/master:output/HaxeManual/website/type-system-structural-subtyping.md

---

Previous section: [クラスとインターフェースの単一化](type-system-unification-between-classes-and-interfaces.md)

Next section: [単相](type-system-monomorphs.md)
