## 3.3.1 ジェネリック型パラメータのコンストラクト

> ##### Define: ジェネリック型パラメータ
>
> 型パラメータを持っているクラスまたはメソッドがジェネリックであるとき、その型パラメータもジェネリックであるという。

普通の型パラメータでは、`new T()`のようにその型をコンストラクトすることはできません。これは、Haxeが1つの関数を生成するために、そのコンストラクトが意味をなさないからです。しかし、型パラメータがジェネリックの場合は違います。これは、コンパイラはすべての型パラメータの組み合わせに対して別々の関数を生成しています。このため`new T()`の`T`を実際の型に置き換えることができます。

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

ここでは、`T`の実際の型の決定は、[トップダウンの推論](type-system-top-down-inference.md)で行われることに注意してください。この方法での型パラメータのコンストラクトを行うには2つの必須事項があります。

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