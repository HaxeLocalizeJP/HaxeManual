## 1.3 Hello World

次のプログラムはコンパイルして実行をすると"Hello World"と表示します。

```haxe
class Main {
  static public function main():Void {
    trace("Hello World");
  }
}
```

上記のコードは、`Main.hx`という名前で保存して、`haxe -main Main --interp`というコマンドでHaxeコンパイラを呼び出すと実際に動作させることが可能です。これで`Main.hx:3: Hello world`という出力がされるはずです。このことから以下のいくつかのことを学ぶことができます。

* Haxeのコードは`.hx`という拡張子で保存する。
* Haxeのコンパイラはコマンドラインツールであり、`-main Main`や`--interp`のようなパラメータをつけて呼び出すことができる。
* Haxeのプログラムにはクラスがあり(`Main`、大文字から始まる)、クラスには関数がある(`main`、小文字からはじまる)。 
* Haxeのmainクラスをふくむファイルは、そのクラス名と同じ名前を使う(この場合だと、`Main.hx`)。

---

Previous section: [ライセンス](introduction-license.md)

Next section: [歴史](introduction-haxe-history.md)