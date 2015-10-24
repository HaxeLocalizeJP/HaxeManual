## 8.3.2 フィールドアクセス補完

フィールドの補完はドット（`.`）文字の後から開始されて、その型で利用可能なフィールドをリストアップします。コンパイラは補完の位置までのすべての構文解析と型付けを行い、関連する情報を標準エラー出力に出力します。

```haxe
class Main {
  public static function main() {
    trace("Hello".|
  }
}
```

このファイルをMain.hxとして保存すると、補完を`haxe --display Main.hx@0`のコマンドで呼び出せます。その出力は以下のようなものでしょう（いくつかの情報を可読性のために削ったりフォーマットをかけたりしています）。

```haxe
<list>
<i n="length">
  <t>Int</t>
  <d>
    The number of characters in `this` String.
  </d>
</i>
<i n="charAt">
  <t>index : Int -&gt; String</t>
  <d>
    Returns the character at position `index` of `this` String.
    If `index` is negative or exceeds `this.length`, the empty String
    "" is returned.
  </d>
</i>
<i n="charCodeAt">
  <t>index : Int -&gt; Null&lt;Int&gt;</t>
  <d>
    Returns the character code at position `index` of `this` String.
    If `index` is negative or exceeds `this.length`, null is returned.
    To obtain the character code of a single character, "x".code can
    be used instead to inline the character code at compile time.
    Note that this only works on String literals of length 1.
  </d>
</i>
</list>
```

このXMLの構造は以下の通りです。

* ドキュメント直下の`list`ノードはいくつかの`i`ノードを持ち、そのそれぞれが1つフィールドを表現しています。
* `n`属性はフィールドの名前です。
* `t`ノードはフィールドの型です。
* `d`ノードはフィールドのドキュメントです。

##### since Haxe 3.2.0

`-D display-details`をつけてコンパイルすると、各フィールドに`var`と`method`のいずれかの`k`属性が付きます。これにより、関数型の変数フィールドとメソッドフィールドを区別できます。

---

Previous section: [概要](cr-completion-overview.md)

Next section: [呼び出し引数の補完](cr-completion-call-argument.md)