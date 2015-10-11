## 6.4.1 導入

パターンマッチングは、与えられたパターンと値がマッチするかで分岐をする処理のことです。Haxeでは、すべてのパターンマッチングは[`switch`式](expression-switch.md)の個々の`case`式が表すパターンに従って行われます。それでは以下のデータ構造を使って、さまざまなパターンの構文を見ていきましょう。

```haxe
enum Tree<T> {
  Leaf(v:T);
  Node(l:Tree<T>, r:Tree<T>);
}
```

以下はパターンマッチングの基本事項です。

* パターンは上から下へとマッチングされます。
* 入力値にマッチする最上位のパターンの持っている式が実行されます。
* `_`はすべてにマッチします。このため、`case _:`は`default:`と同じです。

---

Previous section: [パターンマッチング](lf-pattern-matching.md)

Next section: [enumマッチング](lf-pattern-matching-enums.md)