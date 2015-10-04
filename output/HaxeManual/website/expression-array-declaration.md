## 5.5 配列の宣言

配列は`,`で区切った値を、大かっこ`[]`で囲んで初期化します。空の`[]`は空の配列を表し、`[1, 2, 3]`は`1`、`2`、`3`の3つの要素を持つ配列になります。

配列の初期化をサポートしていないプラットフォームでは、生成されたコードはあまり簡潔ではないかもしれません。本質的には以下のようなコードに見えるでしょう。

```haxe
var a = new Array();
a.push(1);
a.push(2);
a.push(3);
```

つまり、関数を[インライン化](class-field-inline.md)するかを決める場合には、この構文で見えているよりも多くのコードがインライン化されることがあることを考慮すべきです。

より高度な初期化方法は、[Array Comprehension](lf-array-comprehension.md)で説明します。

---

Previous section: [定数値](expression-constants.md)

Next section: [オブジェクトの宣言](expression-object-declaration.md)