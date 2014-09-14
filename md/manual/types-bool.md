## 2.1.4 Bool(真偽値)

> ##### Define: Bool
>
> 真(**true**)または、偽(**false**)のどちらかになる値を表す。

`Bool`型の値は、[`if`](expression-if.md)や[`while`](expression-while.md)のような**条件文**によく表れます。以下の演算子は、`Bool`値を受け取って`Bool`値を返します。

* `&&` (and)
* `||` (or)
* `!` (not)

Haxeは、Bool値の2項演算は、実行時に左から右へ必要な分だけ評価することを保証します。例えば、`A && B`という式は、まず`A`を評価して`A`が`true`だった場合のみ`B`が評価されます。同じように、`A || B`では`A`が`true`だった場合は、`B`の値は意味を持たないので評価されません。

これは、以下のような場合に重要です。

```haxe
if (object != null && object.field == 1) {
  ...
}
```

`object`が`null`の場合に`object.field`にアクセスするとランタイムエラーになりますが、事前に`object != null`のチェックをすることでエラーから守ることができます。

---

Previous section: [数値の演算子](types-numeric-operators.md)

Next section: [Void](types-void.md)