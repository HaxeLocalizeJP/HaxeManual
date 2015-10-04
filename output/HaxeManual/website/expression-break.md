## 5.20 break

`break`キーワードは、そのキーワードをふくむ最も内側にあるループ(`for`でも、`while`でも)の制御フローからぬけ出して、くり返し処理を終了させます。

```haxe
while(true) {
	expression1;
	if (condition) break;
	expression2;
}
```

`expression1`はすべてのくり返しで評価されますが、`condition`が偽になると`expression2`は、実行されません。

型付け機は`break`がループの内部のみで使用されていることを確認します。[`switch`のケース](expression-switch.md)に対する`break`は、Haxeではサポートしていません。

---

Previous section: [return](expression-return.md)

Next section: [continue](expression-continue.md)