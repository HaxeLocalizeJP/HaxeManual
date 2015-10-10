## 6.3.1 Haxe標準ライブラリについて

Haxeの標準ライブラリのいくつかのクラスは静的拡張の用途に合うように設計されています。次の例からは`StringTools`の使い方がわかります。

```haxe
using StringTools;

class Main {
  static public function main() {
    "adc".replace("d", "b");
  }
}
```

`String`自身は`replace`を持っていませんが、`using StringTools`の静的拡張によって提供されます。いつものように、JavaScriptへの変換を見るとよくわかります。

```haxe
Main.main = function() {
	StringTools.replace("adc","d","b");
}
```

Haxe標準ライブラリでは以下のクラスが静的拡張として使うように設計されています。

* `StringTools`: 置換やトリミングといった、文字列に対する拡張を提供します。
* `Lambda`: `Iterable`に対する関数型のメソッドを提供します。　
* `haxe.EnumTools`: 列挙型とそのインスタンスについての情報を得る機能を提供します。
* `haxe.macro.Tools`: マクロをあつかう際のさまざまな拡張を提供します(詳しくは[Tools](macro-tools.md))。

> ##### Trivia: "using" using
>
> `using`キーワードが追加されて以降、`using`を使う(using using)ときの問題や、その影響についての会話がよくされるようになりました。"using using"のせいでさまざまな場面でわかりにくい英語が生まれたため、このマニュアルの著者はこの機能をその実際の性質から静的拡張と呼ぶことに決めました。

---

Previous section: [静的拡張](lf-static-extension.md)

Next section: [パターンマッチング](lf-pattern-matching.md)