## 5.21 continue

`continue`キーワードは、そのキーワードをふくむ最も内側にあるループ(`for`でも、`while`でも)の現在のくり返しを終了します。そして、次のくり返しのためのループ条件チェックが行われます。

```haxe
while(true) {
	expression1;
	if(condition) continue;
	expression2;
}
```

`expression1`は、各くり返しすべてで評価されますが、`condition`が偽の時は、その回のくり返しについては評価がされません。`break`は異なりループ処理自体は続きます。

型付け機は`continue`がループの内部のみで使用されていることを確認します。

---

Previous section: [break](expression-break.md)

Next section: [throw](expression-throw.md)