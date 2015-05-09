## 1.3 Hello World

次のプログラムはコンパイルして実行をすると"Hello World"と表示します:

```haxe
class HelloWorld {
  static public function main():Void {
    trace("Hello World");
  }
}
```

上記のコードは、`HelloWorld.hx`という名前で保存して、`haxe -main HelloWorld --interp`というコマンドでHaxeコンパイラを呼び出すと実際に動作させることが可能です。これで`HelloWorld.hx:3: Hello world`という出力がされるはずです。このことから以下のいくつかのことを学ぶことができます。

* Haxeのコードは`.hx`という拡張子で保存する。
* Haxeのコンパイラはコマンドラインツールであり、`-main HelloWorld`や`--interp`のようなパラメータをつけて呼び出すことができる。
* Haxeのプログラムにはクラスがあり(`HelloWorld`、大文字から始まる)、クラスには関数がある(`main`、小文字からはじまる)。 
* Haxeのmainクラスをふくむファイルは、そのクラス名と同じ名前です(この場合だと、`HelloWorld.hx`)。

---

Previous section: [License](introduction-license.md)

Next section: [歴史](introduction-haxe-history.md)