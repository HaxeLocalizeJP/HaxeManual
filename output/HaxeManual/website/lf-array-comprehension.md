## 6.6 配列内包表記

Haxeの配列内包表記は既存の構文を配列の初期化をより簡単にするためにも使えるようにするものです。配列内包表記は`for`または`while`のキーワードによって識別されます。

```haxe
class Main {
  static public function main() {
    var a = [for (i in 0...10) i];
    trace(a); // [0,1,2,3,4,5,6,7,8,9]

    var i = 0;
    var b = [while(i < 10) i++];
    trace(b); // [0,1,2,3,4,5,6,7,8,9]
  }
}
```

変数`a`は0から9までの数値を要素として持つ配列として初期化されます。コンパイラはループを作ってその繰り返しの一つ一つで要素を追加するコードを出力します。つまり以下のコードと等価です。

```haxe
var a = [];
for (i in 0...10) a.push(i);
```

変数`b`も同じ値に初期化されますが、`for`ではなく`while`という異なる内包表記の形式を使っています。そして、これは以下のコードと等価です。

ループの式は条件分岐やループのネストを含めて、いかなる式でもかまいません。ですから、以下の式は期待通りに動作します。

```haxe
class Main {
  static public function main() {
    var a = [
      for (a in 1...11)
        for(b in 2...4)
          if (a % b == 0)
            a+ "/" +b
    ];
    // [2/2,3/3,4/2,6/2,6/3,8/2,9/3,10/2]
    trace(a);
  }
}

```

---

Previous section: [文字列補間](lf-string-interpolation.md)

Next section: [イテレータ(反復子)](lf-iterators.md)
