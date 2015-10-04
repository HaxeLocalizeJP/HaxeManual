## 5.1 ブロック

Haxeのブロックは中かっこで`{`から始まり、`}`で終わります。ブロックはいくつかの式をふくみ、各式はセミコロンで終わります。一般の構文としては以下のとおりです。

```haxe
{
	式1;
	式2;
	...
	式N;
}
```

ブロック式の値とその型は、ブロック式がふくむ最後の式の値と型と同じになります。

ブロック内では、[`var`式](expression-var.md)を使ったローカル変数の定義と[`function`式](expression-function.md)を使ったローカル関数の定義が可能です。これらのローカル変数とローカル関数は、そのブロックとさらに入れ子のブロックの中では使用することができますが、ブロックの外では利用できません。また、定義よりも後でしか使えません。次の例では`var`を使っていますが、同じルールが`function`の場合でも使用されます。

```haxe
{
	a; // error, a is not declared yet
	var a = 1; // declare a
	a; // ok, a was declared
	{
		a; // ok, a is available in sub-blocks
	}
  // ok, a is still available after
	// sub-blocks	
	a;
}
a; // error, a is not available outside
```

実行時には、ブロックは上から下へと評価されていきます。フロー制御(例えば、[例外](expression-try-catch.md)や[return式](expression-return.md)など)によって、すべての式が評価される前に中断されることもあります。

---

Previous section: [式](expression.md)

Next section: [定数値](expression-constants.md)