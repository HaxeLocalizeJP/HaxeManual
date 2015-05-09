## 3.6 型推論

型推論はこのドキュメントで何度も出てきており、これ以降でも重要です。型推論の動作の簡単なサンプルをお見せします。

```haxe
class TypeInference {
  public static function main() {
    var x = null;
    $type(x); // Unknown<0>
    x = "foo";
    $type(x); // String
  }
}
```
この特殊な構文`$type`は、[関数](types-function.md)の型の説明をわかりやすくするためにも使っていました。それではここで公式な説明をしましょう。

> ##### Define: `$type`
>
> `$type`は関数のように呼び出せるコンパイル時の仕組みで、一つの引数を持ちます。コンパイラは引数の式を評価し、そしてその式の型を出力します。

上記の例では、最初の`$type`では`Unknown<0>`が表示されます。これは[単相](types-monomorph.md)で、未知の型です。次の行の`x = "foo"`で定数値の`String`を`x`に代入しており、`String`の単相での[単一化](type-system-unification.md)が起こります。そして、`x`がこのとき`String`に変わったことがわかります。

[ダイナミック](types-dynamic.md)以外の型が、単相での単一化を行うと単相はその型になります(その型に変形(**morph**)します)。このため、この型はもう別の型には変形できません。これが単相(monomorph)の**mono**の部分です。

以下が単一化のルールです。型推論は複合型でも起こります。

```haxe
class TypeInference2 {
  public static function main() {
    var x = [];
    $type(x); // Array<Unknown<0>>
    x.push("foo");
    $type(x); // Array<String>
  }
}
```

変数`x`は初め空の`Array`で初期化されています。この時点で`x`の型は配列であると言えますが、配列の要素の型については未知です。その結果`x`の型は、`Array<Unknown<0>>`となります。この配列が`Array<String>`だとわかるには、`String`をこの配列にプッシュするだけで十分です。

---

Previous section: [共通の基底型](type-system-unification-common-base-type.md)

Next section: [トップダウンの推論](type-system-top-down-inference.md)