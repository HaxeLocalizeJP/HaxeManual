## 6.4.3 変数の取り出し

パターンの一部のあらゆる値は識別子を使ってマッチングさせて、取り出すことができます。

```haxe
    var myTree = Node(Leaf("foo"), Node(Leaf("bar"), Leaf("foobar")));
    var name = switch(myTree) {
      case Leaf(s): s;
      case Node(Leaf(s), _): s;
      case _: "none";
    }
    trace(name); // foo
```

これは以下の流れにしたがって`return`を行います。

* `myTree`が`Leaf`の場合、その名前が返る。
* `myTree`が`Node`でその左の子要素が`Leaf`の場合、その名前が返る(上の例の場合、これが適用されて`"foo"`が返る)。
* そのほかの場合、`"none"`が返る。

マッチされた値を取り出すのに`=`を使うこともできます。

```haxe
    var node = switch(myTree) {
      case Node(leafNode = Leaf("foo"), _): leafNode;
      case x: x;
    }
    trace(node); // Leaf(foo)
```

`leafNode`には`Leaf("foo")`が割り当てられているので、これにマッチします。そのほかのケースでは、`myTree`自身が返ります。`case x`は`case _`と同じようにすべてにマッチしますが、`x`のような識別子が使われるとマッチした値がその変数に対して割り当てられます。

---

Previous section: [enumマッチング](lf-pattern-matching-enums.md)

Next section: [構造体マッチング](lf-pattern-matching-structure.md)