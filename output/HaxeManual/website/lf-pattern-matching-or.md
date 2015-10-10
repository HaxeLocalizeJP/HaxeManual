## 6.4.6 orパターン

`|`演算子は複数のパターンが許容されることを示す用途で、パターン内のあらゆる箇所に使うことができます。

```haxe
    var match = switch(7) {
      case 4 | 1: "0";
      case 6 | 7: "1";
      case _: "2";
    }
    trace(match); // 1
```

orパターン内で変数の取得をしたい場合、その子要素両方で行わなくてはいけません。

---

Previous section: [配列マッチング](lf-pattern-matching-array.md)

Next section: [ガード](lf-pattern-matching-guards.md)