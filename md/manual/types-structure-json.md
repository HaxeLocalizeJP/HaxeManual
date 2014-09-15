## 2.5.1 JSONで構造体を書く

以下のように、**文字列の定数値**をキーに使う**JavaScript Object Notation(JSON)**の構文を構造体に使うこともできます。

```haxe
var point = { "x" : 1, "y" : -5 };
```

**文字列の定数値**すべてが許容されるますが、フィールドが[Haxeの識別子](dictionary.md#define-identifier)として有効である場合のみ型の一部として認識されます。そして、Haxeの構文では識別子として無効なフィールドにはアクセスできないため、[リフレクション](std-reflection.md)の`Reflect.field`と`Reflect.setField`を使わなくてはいけません。

---

Previous section: [匿名の構造体](types-anonymous-structure.md)

Next section: [構造体の型のクラス記法](types-structure-class-notation.md)