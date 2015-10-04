## 2.8.6 抽象型フィールドの繰り上げ

##### since Haxe 3.1.0

基底型をラップした場合、その機能性のを"保ちたい"場合があります。繰り上がりの関数を手で書くのは面倒なので、Haxeでは`@:forward`メタデータを利用できるようにしています。

```haxe
@:forward(push, pop)
abstract MyArray<S>(Array<S>) {
  public inline function new() {
    this = [];
  }
}

class Main {
  static public function main() {
    var myArray = new MyArray();
    myArray.push(12);
    myArray.pop();
    // MyArray<Int> has no field length
    //myArray.length;
  }
}
```

この例では、抽象型の`MyArray`が`Array`をラップしています。この`@:forward`メタデータは、基底型から繰り上がらせるフィールド2つを引数として与えられています。上記の例の`main`関数は、`MyArray`をインスタンス化して、その`push`と`pop`のメソッドにアクセスしています。コメント化されている行は、`length`フィールドは利用できないことを実演するものです。

ではどのようなコードが出力されるのか、いつものようにJavaScriptへの出力を見てみましょう。

```haxe
Main.main = function() {
	var myArray = [];
	myArray.push(12);
	myArray.pop();
};
```

全てのフィールドを繰り上げる場合は、引数なしの`@:forward`を利用できます。もちろんこの場合でも、Haxeコンパイラは基底型にそのフィールドが存在していることを保証します。

> ##### Trivia: マクロとして実装
>
> `@:enum`と`@:forward`の両機能は、もともとは[ビルドマクロ](macro-type-building.md)を利用して実装していました。この実装はマクロなしのコードから使う場合はうまく動作していましたが、マクロからこれらの機能を使った場合に問題を起こしました。このため、これらの機能はコンパイラへと移されました。

---

Previous section: [抽象型列挙体](types-abstract-enum.md)

Next section: [コアタイプの抽象型](types-abstract-core-type.md)