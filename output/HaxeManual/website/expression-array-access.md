## 5.8 配列アクセス

配列アクセスは大かっこ(`[`)で始まり、インデックスを表す式が続き、大かっこ閉(`]`)で閉じます。

```haxe
expr[indexExpr]
```

`expr`と`indexExpr`について任意の式が許可されていますが、型付けの段階では以下の特定の組み合わせのみが許可されます。

* `expr`は`Array`か`Dynamic`であり、`indexExpr`が`Int`である。
* `expr`は[抽象型](types-abstract.md)であり、マッチする[配列アクセス](types-abstract-array-access.md)が定義されている。

---

Previous section: [フィールドへのアクセス](expression-field-access.md)

Next section: [関数呼び出し](expression-function-call.md)