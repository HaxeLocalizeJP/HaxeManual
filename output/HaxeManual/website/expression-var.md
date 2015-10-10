## 5.10 var(変数宣言)

`var`キーワードはカンマ(`,`)で区切って、複数の変数を宣言することができます。すべての変数は正当な[識別子](dictionary.md#define-identifier)を持ち、オプションとして`=`を続けて値の代入を行うこともできます。また変数に明示的な型注釈をあたえることもできます。

```haxe
var a; // declare local a
var b:Int; // declare variable b of type Int
// declare variable c, initialized to value 1
var c = 1;
// declare variable d and variable e
// initialized to value 2
var d,e = 2;
```

ローカル変数のスコープについての挙動は[ブロック](expression-block.md)に書かれています。

---

Previous section: [関数呼び出し](expression-function-call.md)

Next section: [ローカル関数](expression-function.md)