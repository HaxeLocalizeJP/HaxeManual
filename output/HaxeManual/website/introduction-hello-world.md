## 1.3 Hello World

次のプログラムはコンパイルして実行をすると"Hello World"と表示します:

```haxe
class Main {
  static public function main():Void {
    trace("Hello World");
  }
}
```
<<<<<<< HEAD

上記のコードは、`HelloWorld.hx`という名前で保存して、`haxe -main HelloWorld --interp`というコマンドでHaxeコンパイラを呼び出すと実際に動作させることが可能です。これで`HelloWorld.hx:3: Hello world`という出力がされるはずです。このことから以下のいくつかのことを学ぶことができます。

* Haxeのコードは`.hx`という拡張子で保存する。
* Haxeのコンパイラはコマンドラインツールであり、`-main HelloWorld`や`--interp`のようなパラメータをつけて呼び出すことができる。
* Haxeのプログラムにはクラスがあり(`HelloWorld`、大文字から始まる)、クラスには関数がある(`main`、小文字からはじまる)。 
* Haxeのmainクラスをふくむファイルは、そのクラス名と同じ名前を使う(この場合だと、`HelloWorld.hx`)。
=======
This can be tested by saving the above code to a file named `Main.hx` and invoking the Haxe Compiler like so: `haxe -main Main --interp`. It then generates the following output: `Main.hx:3: Hello world`. There are several things to learn from this:

* Haxe programs are saved in files with an extension of `.hx`.
* The Haxe Compiler is a command-line tool which can be invoked with parameters such as `-main Main` and `--interp`.
* Haxe programs have classes (`Main`, upper-case), which have functions (`main`, lower-case). 
* The name of the file containing main Haxe class is the same as name of the class itself (in this case `Main.hx`).
>>>>>>> english/master

---

Previous section: [ライセンス](introduction-license.md)

Next section: [歴史](introduction-haxe-history.md)
