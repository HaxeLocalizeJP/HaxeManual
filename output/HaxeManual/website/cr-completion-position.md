## 8.3.6 定義位置の補完

##### since Haxe 3.2.0

定義位置の補完は`"position"`モードの引数を使うことで使用できます（詳しくは[概要](cr-completion-overview.md)）。フィールドを使って実演しますが、ローカル変数と型でも同じように動作することも覚えておきましょう。

```haxe
class Main {
  static public function main() {
    "foo".split.|
}
```

このファイルをMain.hxとして保存すると、補完を`haxe --display Main.hx@0@position`のコマンドで呼び出せます。この出力は以下のようになります。

```haxe
<list>
<pos>std/string.hx:124: characters 1-54</pos>
</list>
```

> ##### Trivia: ターゲットの特定の省略による影響
>
> このサンプルでは`std`のString.hxが取得されましたが、ここに実際の実装はありません。これはどのターゲットとも特定しなかったためであり、補完モードではそれでも構いません。例えば`-neko neko.n`のコマンドラインが含められた場合、結果として取得される位置は代わりに`std/neko/_std/string.hx:84: lines 84-98.`となるでしょう。

---

Previous section: [使用状況の補完](cr-completion-usage.md)

Next section: [トップレベルの補完](cr-completion-top-level.md)