## 2.5.2 構造体の型のクラス記法

構造体の型を書く場合に、Haxeでは[クラスフィールド](class-field.md)を書くときと同じ構文が使用できます。以下の[typedef](type-system-typedef.md)では、`Int`型の`x`の`y`変数フィールドを持つ`Point`型を定義しています。

```haxe
typedef Point = {
    var x : Int;
    var y : Int;
}
```

---

Previous section: [JSONで構造体を書く](types-structure-json.md)

Next section: [パフォーマンスへの影響](types-structure-performance.md)