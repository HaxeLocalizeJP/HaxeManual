## 6.4.2 enumマッチング

enumのコンストラクタは直観的な方法でマッチングできます。

```haxe
    var myTree = Node(Leaf("foo"), Node(Leaf("bar"), Leaf("foobar")));
    var match = switch(myTree) {
      // matches any Leaf
      case Leaf(_): "0";
      // matches any Node that has r = Leaf
      case Node(_, Leaf(_)): "1";
      // matches any Node that has has
      // r = another Node, which has
      // l = Leaf("bar")
      case Node(_, Node(Leaf("bar"), _)): "2";
      // matches anything
      case _: "3";
    }
    trace(match); // 2
```

パターンマッチングでは、ケースを上から下へと確認していき、入力値とマッチする最初のものを見つけ出します。以下の各ケースを実行する流れの説明で、その過程を理解してください。

* `case Leaf(_)`: `myTree`は`Node`なので、マッチングに失敗します。
* `case Node(_, Leaf(_))`: `myTree`の右側の子要素は`Leaf`ではなく、`Node`なので失敗します。
* `case Node(_, Node(Leaf("bar"), _))`: マッチングに成功します。
* `case _`: 前のケースでマッチングが成功したので確認が行われません。

---

Previous section: [導入](lf-pattern-matching-introduction.md)

Next section: [変数の取り出し](lf-pattern-matching-variable-capture.md)