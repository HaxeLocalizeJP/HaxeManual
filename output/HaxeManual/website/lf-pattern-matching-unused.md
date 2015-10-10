## 6.4.11 無意味なパターンのチェック

同じように、コンパイラはどのような入力値に対してもマッチしないパターンを禁止します。

```haxe
switch(Leaf("foo")) {
    case Leaf(_)
       | Leaf("foo"): // This pattern is unused
    case Node(l,r):
    case _: // This pattern is unused
}
```

---

Previous section: [網羅性のチェック](lf-pattern-matching-exhaustiveness.md)

Next section: [文字列補間](lf-string-interpolation.md)