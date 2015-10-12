## 6.4.9 抽出子(エクストラクタ)

##### since Haxe 3.1.0

抽出子(エクストラクタ)はマッチした値に変更を適用することができます。マッチした値に小さな変更を適用して、さらにマッチングを行う場合に便利です。

```haxe
enum Test {
  TString(s:String);
  TInt(i:Int);
}

class Main {
  static public function main() {
    var e = TString("fOo");
    switch(e) {
      case TString(temp):
        switch(temp.toLowerCase()) {
          case "foo": true;
          case _: false;
        }
      case _: false;
    }
  }
}
```

この場合、`TString`列挙型コンストラクタの引数の値を、`temp`に割り当てて、さらにネストした`temp.toLowerCase()`に対する`switch`を行っています。見てのとおり、`TString`が`"foo"`の一部大文字のものを持っているので、このマッチングは成功します。これは抽出子を使うことで簡略化できます。

```haxe
enum Test {
  TString(s:String);
  TInt(i:Int);
}

class Main {
  static public function main() {
    var e = TString("fOo");
    var success = switch(e) {
      case TString(_.toLowerCase() => "foo"):
        true;
      case _:
        false;
    }
  }
}
```

抽出子は`extractorExpression => match`の式によって認識されます。コンパイラはその前の例と同じようなコードを出力しますが、記述する構文はずいぶんと簡略化されました。抽出子は`=>`で分断される以下の2つの部品からなります。

1. 左側はあらゆる式が可能で、アンダースコア(`_`)が出現する箇所すべてが、現在マッチする値で置き換えられます。
2. 右側は左側を評価した結果をマッチングするためのパターンです。

右側はパターンですから、さらに別の抽出子を使うことが可能です。以下の例では2つの抽出子をチェーンさせています。

```haxe
class Main {
  static public function main() {
    switch(3) {
      case add(_, 1) => mul(_, 3) => a:
        trace(a);
    }
  }

  static function add(i1:Int, i2:Int) {
    return i1 + i2;
  }

  static function mul(i1:Int, i2:Int) {
    return i1 * i2;
  }
}
```

これは`3`がマッチして`add(3, 1)`を呼び出し、その結果の`4`がマッチして`mul(4, 3)`呼び出された結果として、`12`が出力されます。2つ目の`=>`の右側の`a`は[変数取り出し](lf-pattern-matching-variable-capture.md)であることに注意してください。

現在は[orパターン](lf-pattern-matching-or.md)内で抽出子を使うことはできません。

```haxe
class Main {
  static public function main() {
    switch("foo") {
      // orパターン内で抽出子は使えません。
      case (_.toLowerCase() => "foo") | "bar":
    }
  }
}
```

しかし、orパターンを抽出子の右側に使うことはできます。そのため、上の例は小かっこ無しの場合ではコンパイル可能です。

---

Previous section: [複数の値のマッチング](lf-pattern-matching-tuples.md)

Next section: [網羅性のチェック](lf-pattern-matching-exhaustiveness.md)