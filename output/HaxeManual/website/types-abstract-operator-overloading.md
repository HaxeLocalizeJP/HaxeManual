## 2.8.2 演算子オーバーロード

抽象型ではクラスフィールドに`@:op`メタデータを付けることで、単項演算子と2項演算子のオーバーロードが可能です。

```haxe
abstract MyAbstract(String) {
  public inline function new(s:String) {
    this = s;
  }

  @:op(A * B)
  public function repeat(rhs:Int):MyAbstract {
    var s:StringBuf = new StringBuf();
    for (i in 0...rhs)
      s.add(this);
    return new MyAbstract(s.toString());
  }
}

class Main {
  static public function main() {
    var a = new MyAbstract("foo");
    trace(a * 3); // foofoofoo
  }
}
```

`@:op(A * B)`を宣言することで、`repeat`関数は、左辺が`MyAbstract`で右辺が`Int`の場合の`*`演算子による乗算の関数として利用されます。これは18行目で利用されています。この部分はJavaScriptにコンパイルすると以下のようになります。

```haxe
console.log(_AbstractOperatorOverload.
  MyAbstract_Impl_.repeat(a,3));
```

[クラスフィールドによる暗黙の型変換](types-abstract-implicit-casts.md)と同様に、オーバーロードメソッドも要求された場所で呼び出しが発生します。上記の例の`repeat`関数は可換ではありません。`MyAbstract * Int`は動作しますが、`Int * MyAbstract`では動作しません。`Int * MyAbstract`でも動作させたい場合は`@:commutative`のメタデータが使えます。逆に、`MyAbstract * Int`ではなく`Int * MyAbstract`でのみ動作させてたい場合、1つ目の引数で`Int`型、2つ目の引数で`MyAbstract`型を受け取る静的な関数をオーバーロードメソッドにすることができます。

単項演算子の場合もこれによく似ています。

```haxe
abstract MyAbstract(String) {
  public inline function new(s:String) {
    this = s;
  }

  @:op(++A) public function pre()
    return "pre" + this;
  @:op(A++) public function post()
    return this + "post";
}

class Main {
  static public function main() {
    var a = new MyAbstract("foo");
    trace(++a); // prefoo
    trace(a++); // foopost
  }
}
```

2項演算子と単項演算子の両方とも、戻り値の型は何でも構いません。

##### 基底型の演算を公開する

基底型が抽象型でそこで許容されている演算子でかつ戻り値を元の抽象型に代入可能なものについては、`@:op`関数のボディを省略することが可能です。

```haxe
abstract MyAbstractInt(Int) from Int to Int {
  // The following line exposes the (A > B) operation from the underlying Int
  // type. Note that no function body is used:
  @:op(A > B) static function gt( a:MyAbstractInt, b:MyAbstractInt ) : Bool;
}

class Main {
  static function main() {
    var a:MyAbstractInt = 42;
    if(a > 0) trace('Works fine, > operation implemented!');

    // The < operator is not implemented.
    // This will cause an 'Cannot compare MyAbstractInt and Int' error:
    if(a < 100) { }
  }
}

```

---

Previous section: [暗黙のキャスト](types-abstract-implicit-casts.md)

Next section: [配列アクセス](types-abstract-array-access.md)