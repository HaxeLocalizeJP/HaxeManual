## 6.4.10 網羅性のチェック

コンパイラは起こりうるケースが忘れ去られてないかのチェックを行います。

```haxe
switch(true) {
    case false:
} // Unmatched patterns: true
```

マッチング対象の`Bool`型は`true`と`false`の2つの値を取り得ますが、`false`のみがチェックされています。

---

Previous section: [抽出子(エクストラクタ)](lf-pattern-matching-extractors.md)

Next section: [無意味なパターンのチェック](lf-pattern-matching-unused.md)