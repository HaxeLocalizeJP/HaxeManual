## 2.3 クラスインスタンス

多くのオブジェクト指向言語と同じように、Haxeでも大抵のプログラムではクラスが最も重要なデータ構造です。Haxeのすべてのクラスは、明示された名前と、クラスの配置されたパスと、0個以上のクラスフィールドを持ちます。ここではクラスの一般的な構造とその関わり合いについて焦点を当てていきます。クラスフィールドの詳細については後で[Class Fields](class-field.md)の章で解説をします。

以下のサンプルコードが、この節で学ぶ基本になります。

```haxe
class Point {
  var x : Int;
  var y : Int;
  public function new(x,y) {
    this.x = x;
    this.y = y;
  }
  public function toString() {
    return "Point("+x+","+y+")";
  }
}
```

意味的にはこれは不連続の2次元空間上の点を表現するものですが、このことはあまり重要ではありません。代わりにその構造に注目しましょう。

* `class`のキーワードは、クラスを宣言していることを示すものです。
* `Point`はクラス名です。[型の識別子のルール](dictionary.md#define-identifier)に従っているものが使用できます。
* クラスフィールドは`{}`で囲われます。
* `Int`型の`x`と`y`の2つの**変数**フィールドと、
* クラスの**コンストラクタ**となる特殊な**関数**フィールド`new`と、
* 通常の関数`toString`でクラスフィールドが構成されています。

また、Haxeにはすべてのクラスと一致する特殊な型があります。

> ##### Define: `Class<T>`
>
> 
<<<<<<< HEAD:md/manual/types-class-instance.md
> この型はすべてのクラスの型と一致します。つまり、すべてのクラス(インスタンスではなくクラス)をこれに代入することができます。コンパイル時に、`Class<T>`は全てのクラスの型の共通の親の型となります。しかし、この関係性は生成されたコードに影響を与えません。
> 
> この型は、任意のクラスを要求するようなAPIで役立ちます。例えば、[HaxeリフレクションAPI](std-reflection.md)のいくつかのメソッドがこれに当てはまります。
>
=======
> This type is useful when an API requires a value to be **a** class, but not a specific one. This applies to several methods of the [Haxe reflection API](std-reflection.md).
>>>>>>> english/master:output/HaxeManual/website/types-class-instance.md

---

Previous section: [オプション引数とnull許容](types-nullability-optional-arguments.md)

Next section: [クラスのコンストラクタ](types-class-constructor.md)