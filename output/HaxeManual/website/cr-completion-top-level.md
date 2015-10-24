## 8.3.7 トップレベルの補完

##### since Haxe 3.2.0

トップレベルの補完は、与えられた補完位置での使用可能な識別子をHaxeコンパイラが知るかぎりのすべて表示します。この補完機能だけは実演するのに、実際の位置を引数であたえる必要があります。

```haxe
class Main {
  static public function main() {
    var a = 1;
  }
}

enum MyEnum {
  MyConstructor1;
  MyConstructor2(s:String);
}
```

このファイルをMain.hxとして保存すると、補完を`haxe --display Main.hx@63@toplevel`のコマンドで呼び出せます。その出力は以下のようになります（簡潔さのためにいくつかの要素を削っています）。

```haxe
<il>
<i k="local" t="Int">a</i>
<i k="static" t="Void -&gt; Unknown&lt;0&gt;">main</i>
<i k="enum" t="MyEnum">MyConstructor1</i>
<i k="enum" t="s : String -&gt; MyEnum">MyConstructor2</i>
<i k="package">sys</i>
<i k="package">haxe</i>
<i k="type" p="Int">Int</i>
<i k="type" p="Float">Float</i>
<i k="type" p="MyEnum">MyEnum</i>
<i k="type" p="Main">Main</i>
</il>
```

XMLの構造は各要素の`k`属性によります。すべての場合で`i`のノードはその値として名前を持ちます。

* `local`, `member`, `static`, `enum`, `global`: `t`属性にその変数やフィールドの型を持ちます。
* `global`, `type`: `p`属性にその型やフィールドが属するモジュールのパスを持ちます。

---

Previous section: [定義位置の補完](cr-completion-position.md)

Next section: [補完サーバー](cr-completion-server.md)