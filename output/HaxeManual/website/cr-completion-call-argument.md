## 8.3.3 呼び出し引数の補完

呼び出し引数の補完は小かっこ`(`の後から開始されて、呼び出しをしようとしている関数の型を返します。これはコンストラクタの呼び出しを含むすべての関数呼び出しで使用可能です。

```haxe
class Main {
  public static function main() {
    trace("Hello".split(|
  }
}
```

このファイルをMain.hxとして保存すると、補完は`haxe --display Main.hx@0`のコマンドを使って呼び出せます。その出力は以下のようなものになります。

```haxe
<type>
delimiter : String -&gt; Array&lt;String&gt;
</type>
```

IDEはここから、呼び出す関数が`delimiter`という`String`型の引数が1つあって`Array<String>`を返すということを読み取れます。

> ##### Trivia: 出力構造の問題
>
> 私たちは現在のフォーマットはほんの少しのうっとおしい自前の構文解析が必要になることを認めます。特に関数については、将来的にはより構造化された出力を提供するようになるかもしれません。

---

Previous section: [フィールドアクセス補完](cr-completion-field-access.md)

Next section: [型のパスの補完](cr-completion-type-path.md)