## 2.4.2 列挙型を使う

列挙型は、有限の種類の値のセットが許されることを表現するだけでも有用です。それぞれのコンストラクタについて多様性が示されるので、コンパイラはありうる全ての値が考慮されていることをチェックすることが可能です。これは、例えば以下のような場合です。

```haxe
enum Color {
  Red;
  Green;
  Blue;
  Rgb(r:Int, g:Int, b:Int);
}

class Main {
  static function main() {
    var color = getColor();
    switch (color) {
      case Red: trace("Color was red");
      case Green: trace("Color was green");
      case Blue: trace("Color was blue");
      case Rgb(r, g, b): trace("Color had a red value of " +r);
    }
  }

  static function getColor():Color {
    return Rgb(255, 0, 255);
  }
}
```

`getColor()`の戻り値を`color`に代入し、その値で[`switch`式](expression-switch.md)の分岐を行います。

初めの`Red`、`Green`、`Blue`の3ケースについては些細な内容で、ただColorの引数無しのコンストラクタとの一致するか調べています。最後の`Rgb(r, g, b)`のケースでは、コンストラクタの引数の値をどうやって利用するのかがわかります。引数の値はケースの式の中で出てきたローカル変数として、[`var`の式](expression-var.md)を使った場合と同じように、利用可能です。

`switch`の使い方について、より高度な情報は後の[パターンマッチング](lf-pattern-matching.md)の節でお話します。

---

Previous section: [列挙型のコンストラクタ](types-enum-constructor.md)

Next section: [匿名の構造体](types-anonymous-structure.md)