## 5.19 return

`return`式は、値をとるものと、とらないものの両方があります。

```haxe
return;
return expression;
```

`return`式は、最も内側に定義されている関数のフロー制御からぬけ出します。最も内側というのは[ローカル関数](expression-function.md)の場合での特徴です。

```haxe
function f1() {
	function f2() {
		return;
	}
	f2();
	expression;
}
```

`return`により、ローカル関数`f2`からはぬけ出しますが、`f1`からはぬけ出しません。つまり、`expression`は評価されます。

`return`が、値の式なしで使用された場合、型付け機はその関数の戻り値が`Void`型であることを確認します。`return`が値の式を持つ場合、型付け機はその関数の戻り値の型(明示的に与えられているか、前のreturnによって推論されている場合)と、`return`している値の型を[単一化](type-system-unification.md)します。

---

Previous section: [try/catch](expression-try-catch.md)

Next section: [break](expression-break.md)