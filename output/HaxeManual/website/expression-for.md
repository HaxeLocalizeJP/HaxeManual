## 5.13 forループ

HaxeはC言語で知られる伝統的なforループはサポートしていません。`for`キーワードの後には小かっこ(`(`)、変数の識別子、`in`キーワード、くり返しの処理を行うコレクションの任意の式が続き、小かっこ閉(`)`)で閉じられて、最後にくり返しの本体の任意の式で終わります。

```haxe
for (v in e1) e2;
```

型付け器は`e1`の型がくり返し可能であるかを確認します。くり返し可能というのは`iterator`メソッドが`Iterator<T>`を返すか、`Iterator<T>`自身である場合です。

変数vはループ本体の`e2`の中で使用可能で、コレクション`e1`の個々の要素の値が保持されます。

Haxeにはある範囲のくり返しを表す特殊な範囲演算子があります。これは`min...max`といった2つの`Int`をとり、`min`(自身をふくむ)から`max`の一つ前までをくり返す`IntIterator`を返す2項演算子です。`max`が`min`より小さくしないように気をつけてください。

```haxe
for (i in 0...10) trace(i); // 0 to 9
```

`for`式の型は常に`Void`です。つまり、値は持たず、右辺の式としては使えません。

ループは[`break`](expression-break.md)と、[`continue`](expression-continue.md)の式を使って、フロー制御が行えます。

---

Previous section: [new(インスタンス化)](expression-new.md)

Next section: [whileループ](expression-while.md)