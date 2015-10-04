## 5.9 関数呼び出し

関数呼び出しは、任意の式を対象として、小かっこ`(`を続け、引数の式のリストを`,`で区切って並べて、小かっこ`)`で閉じることで行います。

```haxe
subject(); // call with no arguments
subject(e1); // call with one argument
subject(e1, e2); // call with two arguments
// call with multiple arguments
subject(e1, ..., eN);
```

---

Previous section: [配列アクセス](expression-array-access.md)

Next section: [var(変数宣言)](expression-var.md)