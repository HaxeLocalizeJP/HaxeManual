## 6.4.4 構造体マッチング

匿名構造体とインスタンスのフィールドに対してマッチさせることも可能です。

```haxe
    var myStructure = {
      name: "haxe",
      rating: "awesome"
    };
    var value = switch(myStructure) {
      case { name: "haxe", rating: "poor" }:
        throw false;
      case { rating: "awesome", name: n }:
        n;
      case _:
        "no awesome language found";
    }
    trace(value); // haxe
```

2番目のケースでは、`rating`が`"awesome"`にマッチすると、`name`フィールドが識別子`n`に割り当てられます。もちろん、この構造体を先の例のTreeに入れて、構造体と`enum`を合わせたマッチングを行うこともできます。

クラスインスタンスについては、その親クラスのフィールドについてはマッチングできないという制限があります。

---

Previous section: [変数の取り出し](lf-pattern-matching-variable-capture.md)

Next section: [配列マッチング](lf-pattern-matching-array.md)