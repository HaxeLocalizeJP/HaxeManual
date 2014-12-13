## 3.5.2 構造的部分型付け

> ##### Define: 構造的部分型付け
>
> 構造的部分型付けは、同じ構造を持つ型の暗黙の関係を示します。

Haxeでは、構造的部分型付けはクラスインスタンスを構造体に代入するときのみ可能です。以下に、[Haxe標準ライブラリ](std.md)の`Lambda`の一部の例を挙げます。

```haxe
public static function empty<T>(it : Iterable<T>):Bool {
	return !it.iterator().hasNext();
}
```

`empty`メソッドは、`Iterable`が要素を持つかをチェックします。この目的では、引数の型について、それが列挙可能(Iterable)であること以外に何も知る必要がありません。Haxe標準ライブラリにはたくさんある`Iterable<T>`で単一化できる型すべてで、これを呼び出すことができるわけです。この種の型付けは非常に便利ですが、静的ターゲットでは大量に使うとパフォーマンスの低下を招くことがあります。詳しくは[パフォーマンスへの影響](types-structure-performance.md)に書かれています。

---

Previous section: [クラスとインターフェースの単一化](type-system-unification-between-classes-and-interfaces.md)

Next section: [単相](type-system-monomorphs.md)