## 3.3 ジェネリック

大抵の場合、Haxeコンパイラは型パラメータが付けられていた場合でも、1つのクラスや関数を生成します。これにより自然な抽象化が行われて、ターゲット言語のコードジェネレータは出力先の型パラメータはあらゆる型になりえると思い込むことになります。つまり、生成されたコードで型チェックが働き、動作が邪魔されることがあります。

クラスや関数は、`:generic` [メタデータ](lf-metadata.md)で**ジェネリック**属性をつけることで一般化することができます。これにより、コンパイラは型パラメータの組み合わせごとのクラスまたは関数を修飾された名前で書き出します。このような設計により[静的ターゲット](dictionary.md#define-static-target)のパフォーマンスに直結するコード部位では、出力サイズの巨大化と引き換えに、速度を得られます。

```haxe
@:generic
class MyArray<T> {
  public function new() { }
}

class Main {
  static public function main() {
    var a = new MyArray<String>();
    var b = new MyArray<Int>();
  }
}
```

あまり使わない明示的な`MyArray<String>`の型宣言があり、よく使う[型推論](type-system-type-inference.md)であつかっていますが、これが重要です。コンパイラは、コンストラクタの呼び出し時にジェネリッククラスの正確な型な型を知っている必要があります。このJavaScript出力は以下のような結果になります。

```haxe
(function () { "use strict";
var Main = function() { }
Main.main = function() {
	var a = new MyArray_String();
	var b = new MyArray_Int();
}
var MyArray_Int = function() {
};
var MyArray_String = function() {
};
Main.main();
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