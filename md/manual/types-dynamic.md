## 2.7 ダイナミック

Haxeは静的な型システムを持っていますが、この型システムは`Dynamic`型を使うことで事実上offにすることが可能です。**Dynamicな値**は、あらゆるものに割り当て可能です。逆に、Dynamicに対してはあらゆる値を割り当て可能です。これにはいくつかの弱点があります。

* 代入、関数呼び出しなど、特定の型を要求される場面でコンパイラが型チェックをしなくなります。
* 特定の最適化が、特に静的ターゲットにコンパイルする場合に、効かなくなります。
* よくある間違い(フィールド名のタイポなど)がコンパイル時に検出できなくなって、実行時のエラーが起きやすくなります。
* [Dead Code Elimination](cr-dce.md)は、`Dynamic`を通じて使用しているフィールドを検出できません。

`Dynamic`が実行時に問題を起こすような例を考えるのはとても簡単です。以下の2行を静的ターゲットへコンパイルすることを考えてください。

```haxe
var d:Dynamic = 1;
d.foo;
```

これをコンパイルしたプログラムを、Flash Playerで実行した場合、`Number にプロパティ foo が見つからず、デフォルト値もありません。`というエラーが発生します。`Dynamic`を使わなければ、このエラーはコンパイル時に検出できます。

> ##### Trivia: Haxe3より前のDynamicの推論
>
> Haxe3のコンパイラは型を`Dynamic`として推論することはないので、`Dynamic`を使いたい場合はそのことを明示しなければ行きません。以前のHaxeのバージョンでは、混ざった型のArrayを`Array<Dynamic>`として推論してました(例えば、`[1, true, "foo"]`)。私たちはこの挙動はたくさんの型の問題を生み出すことに気づき、この仕様をHaxe3で取り除きました。

実際のところ`Dynamic`は使ってしまいますが、多くの場面では他のもっと良い選択肢があるので`Dynamic`の使用は最低限にすべきです。例えば、Haxeの[Reflection](std-reflection.md)APIは、コンパイル時には構造のわからないカスタムのデータ構造をあつかう際に最も良い選択肢になりえます。

`Dynamic`は、[単相(monomorph)](types-monomorph.md)を[単一化](type-system-unification.md)する場合に、特殊な挙動をします。以下のような場合に、とんでもない結果を生んでしまうので、単相が`Dynamic`に拘束されることはありません。

```haxe
class Main {
  static function main() {
    var jsonData = '[1, 2, 3]';
    var json = haxe.Json.parse(jsonData);
    $type(json); // Unknown<0>
    for (i in 0...json.length) {
	  // Array access is not allowed on
	  // {+ length : Int }
      trace(json[0]);
    }
  }
}
```

`Json.parse`の戻り値は`Dynamic`ですが、ローカル変数のjsonの型は`Dynamic`に拘束されません。単相のままです。そして、`json.length`のフィールドにアクセスした時に[匿名の構造体](types-anonymous-structure.md)として推論されて、それにより`json[0]`の配列アクセスでエラーになっています。これは、`json`に対して、`var json:Dynamic`というように明示的に`Dynamic`の型付けをすることで避けることができます。

> ##### Trivia: 標準ライブラリでのDynamic
>
> DynamicはHaxe3より前の標準ライブラリではかなり頻繁に表れていましたが、Haxe3までの継続的な型システムの改善によってDynamicの出現頻度を減らすことができました。

---

Previous section: [デフォルト値](types-function-default-values.md)

Next section: [型パラメータ付きのダイナミック](types-dynamic-with-type-parameter.md)