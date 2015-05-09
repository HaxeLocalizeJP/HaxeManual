## 2.8 抽象型(abstract)

抽象(abstract)型は、実行時には別の型になる型です。抽象型は挙動を編集したり強化したりするために、具体型(=抽象型でない型)を"おおう"型を定義するコンパイル時の機能です。

```haxe
abstract AbstractInt(Int) {
  inline public function new(i:Int) {
    this = i;
  }
}
```

<<<<<<< HEAD:md/manual/types-abstract.md
上記のコードからは以下を学ぶことができます。
=======
* The keyword `abstract` denotes that we are declaring an abstract type.
* `AbstractInt` is the name of the abstract and could be anything conforming to the rules for type identifiers.
* Enclosed in parenthesis `()` is the **underlying type** `Int`.
* Enclosed in curly braces `{}` are the fields,
* which are a constructor function `new` accepting one argument `i` of type `Int`.
>>>>>>> english/master:output/HaxeManual/website/types-abstract.md

* `abstract`キーワードは、抽象型を定義することを宣言している。
* `AbstractInt`は抽象型の名前であり、型の識別子のルールを満たすものなら何でも使える。
* 丸かっこ`()`の中は、その**基底型**の`Int`である。
* 中カッコ`{}`の中はフィールドで、
* `Int`型の`i`のみを引数とするコンストラクタの`new`関数がある。

> ##### Define: 基底型
>
> 
> 抽象型の基底型は、実行時にその抽象型を表すために使われる型です。基底型はたいていの場合は具体型ですが、別の抽象型である場合もあります。
> 

構文はクラスを連想させるもので、意味合いもよく似ています。実際、抽象型のボディ部分(中カッコの開始以降)は、クラスフィールドとして構文解析することが可能です。抽象型は[メソッド](class-field-method.md)と、[実体](dictionary.md#define-physical-field)の無い[プロパティ](class-field-property.md)フィールドを持つことが可能です。

さらに、抽象型は以下のように、クラスと同じようにインスタンス化して使用することができます

```haxe
class MyAbstract {
  static public function main() {
    var a = new AbstractInt(12);
    trace(a); //12
  }
}
```

はじめに書いたとおり、抽象型はコンパイル時の機能ですから、見るべきは上記のコードの実際の出力です。この出力例としては、簡潔なコードが出力されるJavaScriptが良いでしょう。上記のコードを`haxe -main MyAbstract -js myabstract.js`でコンパイルすると以下のようなJavaScriptが出力されます。

```haxe
var a = 12;
console.log(a);
```

抽象型の`AbstractInt`は出力から完全に消えてしまい、その基底型の`Int`の値のみが残っています。これは、`AbstractInt`のコンストラクタがインライン化されて、そのインラインの式が値を`this`に代入します(インライン化については後の[Inline](class-field-inline.md)で学びます)。これは、クラスのように考えていた場合、驚くべきことかもしれません。しかし、これこそが抽象型を使って表現したいことそのものです。
抽象型のすべての**インラインのメンバメソッド**では`this`への代入が可能で、これにより"内部の値"が編集できます。

"もしメンバ関数でinlineが宣言されていなかった場合、何が起こるのか？"というのは良い疑問です。そのようなコードははっきりと成立します。その場合、Haxeは実装クラスと呼ばれるprivateのクラスを生成します。この実装クラスは抽象型のメンバ関数を、最初の引数としてその基底型の`this`を加えた静的な(static)関数で持ちます。さらに実装の詳細の話をすると、この実装クラスは[選択的関数](types-abstract-selective-functions.md)でも使われます。

> ##### Trivia: 基本型と抽象型
>
> 抽象型が生まれる前には、基本型はexternクラスと列挙型で実装されていました。`Int`型を`Float`型の"子クラス"としてあつかうなどのいくつかの面では便利でしたが、一方で問題も引き起こしました。例えば、`Float`がexternクラスなので、実際のオブジェクトしか受け入れないはずの空の構造体の型`{}`として単一化できました。

---

Previous section: [ダイナミックを実装(implements)する](types-dynamic-implemented.md)

Next section: [暗黙のキャスト](types-abstract-implicit-casts.md)