## 3.3 ジェネリック

<<<<<<< HEAD:md/manual/type-system-generic.md
大抵の場合、Haxeコンパイラは型パラメータが付けられていた場合でも、1つのクラスや関数を生成します。これにより自然な抽象化が行われて、ターゲット言語のコードジェネレータは出力先の型パラメータはあらゆる型になりえると思い込むことになります。つまり、生成されたコードで型チェックが働き、動作が邪魔されることがあります。
=======
Usually, the Haxe Compiler generates only a single class or function even if it has type parameters. This results in a natural abstraction where the code generator for the target language has to assume that a type parameter could be of any type. The generated code then might have to perform some type checks which can be detrimental to performance.
>>>>>>> english/master:output/HaxeManual/website/type-system-generic.md

クラスや関数は、`:generic` [メタデータ](lf-metadata.md)で**ジェネリック**属性をつけることで一般化することができます。これにより、コンパイラは型パラメータの組み合わせごとのクラスまたは関数を修飾された名前で書き出します。このような設計により[静的ターゲット](dictionary.md#define-static-target)のパフォーマンスに直結するコード部位では、出力サイズの巨大化と引き換えに、速度を得られます。

```haxe
@:generic
class MyValue<T> {
  public var value:T;
    public function new(value:T) {
    this.value = value;
  }
}

class Main {
  static public function main() {
    var a = new MyValue<String>("Hello");
    var b = new MyValue<Int>(42);
  }
}

```

<<<<<<< HEAD:md/manual/type-system-generic.md
あまり使わない明示的な`MyArray<String>`の型宣言があり、よく使う[型推論](type-system-type-inference.md)であつかっていますが、これが重要です。コンパイラは、コンストラクタの呼び出し時にジェネリッククラスの正確な型な型を知っている必要があります。このJavaScript出力は以下のような結果になります。
=======
It seems unusual to see the explicit type `MyArray<String>` here as we usually let [type inference](type-system-type-inference.md) deal with this. Nonetheless, it is indeed required in this case. The compiler has to know the exact type of a generic class upon construction. The Javascript output shows the result:
>>>>>>> english/master:output/HaxeManual/website/type-system-generic.md

```haxe
(function () { "use strict";
var Test = function() { };
Test.main = function() {
	var a = new MyValue_String("Hello");
	var b = new MyValue_Int(5);
};
var MyValue_Int = function(value) {
	this.value = value;
};
var MyValue_String = function(value) {
	this.value = value;
};
Test.main();
})();
```

`MyArray<String>`と`MyArray<Int>`は、それぞれ`MyArray_String`と`MyArray_Int`になっています。これはジェネリック関数でも同じです。

```haxe
class Main {
  static public function main() {
    method("foo");
    method(1);
  }

  @:generic static function method<T>(t:T) { }
}
```

JavaScript出力を見れば明白です。

```haxe
(function () { "use strict";
var Main = function() { }
Main.method_Int = function(t) {
}
Main.method_String = function(t) {
}
Main.main = function() {
	Main.method_String("foo");
	Main.method_Int(1);
}
Main.main();
})();
```

---

Previous section: [制約](type-system-type-parameter-constraints.md)

Next section: [ジェネリック型パラメータのコンストラクト](type-system-generic-type-parameter-construction.md)