## 3.3.1 ジェネリック型パラメータのコンストラクト

> ##### Define: ジェネリック型パラメータ
>
> 型パラメータを持っているクラスまたはメソッドがジェネリックであるとき、その型パラメータもジェネリックであるという。

<<<<<<< HEAD:md/manual/type-system-generic-type-parameter-construction.md
普通の型パラメータでは、`new T()`のようにその型をコンストラクトすることはできません。これは、Haxeが1つの関数を生成するために、そのコンストラクトが意味をなさないからです。しかし、型パラメータがジェネリックの場合は違います。これは、コンパイラはすべての型パラメータの組み合わせに対して別々の関数を生成しています。このため`new T()`の`T`を実際の型に置き換えることができます。
=======
It is not possible to construct normal type parameters, e.g. `new T()` is a compiler error. The reason for this is that Haxe generates only a single function and the construct makes no sense in that case. This is different when the type parameter is generic: Since we know that the compiler will generate a distinct function for each type parameter combination, it is possible to replace the `T` `new T()` with the real type.
>>>>>>> english/master:output/HaxeManual/website/type-system-generic-type-parameter-construction.md

```haxe
typedef Constructible = {
  public function new(s:String):Void;
}

class Main {
  static public function main() {
    var s:String = make();
    var t:haxe.Template = make();
  }

  @:generic
  static function make<T:Constructible>():T {
    return new T("foo");
  }
}
```

<<<<<<< HEAD:md/manual/type-system-generic-type-parameter-construction.md
ここでは、`T`の実際の型の決定は、[トップダウンの推論](type-system-top-down-inference.md)で行われることに注意してください。この方法での型パラメータのコンストラクトを行うには2つの必須事項があります。
=======
It should be noted that [top-down inference](type-system-top-down-inference.md) is used here to determine the actual type of `T`. There are two requirements for this kind of type parameter construction to work: The constructed type parameter must be
>>>>>>> english/master:output/HaxeManual/website/type-system-generic-type-parameter-construction.md

1. ジェネリックであること
2. 明示的に、[コンストラクタ](types-class-constructor.md)を持つように[制約](type-system-type-parameter-constraints.md)されていること

先ほどの例は、1つ目は`make`が`@:generic`メタデータを持っており、2つ目`T`が`Constructible`に制約されています。`String`と`haxe.Template`の両方とも1つ`String`の引数のコンストラクタを持つのでこの制約に当てはまります。確かにJavascript出力は予測通りのものになっています。

```haxe
var Main = function() { }
Main.__name__ = true;
Main.make_haxe_Template = function() {
	return new haxe.Template("foo");
}
Main.make_String = function() {
	return new String("foo");
}
Main.main = function() {
	var s = Main.make_String();
	var t = Main.make_haxe_Template();
}
```

---

Previous section: [ジェネリック](type-system-generic.md)

Next section: [変性(バリアンス)](type-system-variance.md)
