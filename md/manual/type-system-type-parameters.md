## 3.2 型パラメータ

[クラスフィールド](class-field.md)や[列挙型コンストラクタ](types-enum-constructor.md)のように、Haxeではいくつかの型についてパラメータ化を行うことができます。型パラメータは山カッコ`<>`内にカンマ区切りで記述することで、定義することができます。シンプルな例は、Haxe標準ライブラリの`Array`です。

```haxe
class Array<T> {
	function push(x : T) : Int;
}
```
`Array`のインスタンスが作られると、型パラメータ`T`は[単相](types-monomorph.md)となります。つまり、1度に1つの型であれば、あらゆる型を適用することができます。この適用は以下のどちらか方法で行います

* 明示的に、`new Array<String>()`のように型を記述してコンストラクタを呼び出して適用する。
* 暗黙に、[型推論](type-system-type-inference.md)で適用する。例えば、`arrayInstance.push("foo")`を呼び出す。

型パラメータが付くクラスの定義の内部では、その型パラメータは不定の型です。[制約](type-system-type-parameter-constraints.md)が追加されない限り、コンパイラはその型パラメータはあらゆる型になりうるものと決めつけることになります。その結果、型パラメータの[cast](expression-cast.md)を使わなければ、その型のフィールドにアクセスできなくなります。また、[ジェネリック](type-system-generic.md)にして適切な制約をつけない限り、その型パラメータの型のインスタンスを新しく生成することもできません。

以下は、型パラメータが使用できる場所についての表です。

パラメータが付く場所  | 型を適用する場所  | 備考 
 --- | --- | ---
Class  | インスタンス作成時  | メンバフィールドにアクセスする際に型を適用することもできる 
Enum  | インスタンス作成時  | 
Enumコンストラクタ  | インスタンス作成時  | 
関数  | 呼び出し時  | メソッドと名前付きのローカル関数で利用可能
構造体  | インスタンス作成時  | 
 

関数の型パラメータは呼び出し時に適用される、この型パラメータは（制約をつけない限り）あらゆる型を許容します。しかし、一回の呼び出しにつき適用は1つの型のみ可能です。このことは関数が複数の引数を持つ場合に役立ちます。

```haxe
class FunctionTypeParameter {
  static public function main() {
    equals(1, 1);
    // runtime message: bar should be foo
    equals("foo", "bar");
    // compiler error: String should be Int
    equals(1, "foo");
  }

  static function
  equals<T>(expected:T, actual:T) {
    if (actual != expected) {
      trace('$actual should be $expected');
    }
  }
}
```

`equals`関数の`expected`と`actual`の引数両方が、`T`型になっています。これは`equals`の呼び出しで2つの引数の型が同じでなければならないことを表しています。コンパイラは最初(両方の引数が`Int`型)と2つめ(両方の引数が`String`型)の呼び出しは認めていますが、3つ目の呼び出しはコンパイルエラーにします。

> ##### Trivia: 式の構文内での型パラメータ
>
> なぜ、`method<String>(x)`のようにメソッドに型パラメータをつけた呼び出しができないのか？という質問をよくいただきます。このときのエラーメッセージはあまり参考になりませんが、これには単純な理由があります。それは、このコードでは、`<`と`>`の両方が2項演算子として構文解析されて、`(method < String) > (x)`と見なされるからです。

---

Previous section: [拡張](type-system-extensions.md)

Next section: [制約](type-system-type-parameter-constraints.md)