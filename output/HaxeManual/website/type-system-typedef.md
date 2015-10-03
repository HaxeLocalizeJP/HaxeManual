## 3.1 typedef

typedefは[匿名構造体](types-anonymous-structure.md)の節で、すでに登場しています。そこでは複雑な構造体の型について名前を与えて簡潔にあつかう方法を見ています。この利用法はtypedefが一体なにに良いのかを的確に表しています。[構造体の型](types-anonymous-structure.md)に対して名前を与えるのは、typedefの主たる用途かもしれません。実際のところ、この用途が一般的すぎて多くのHaxeユーザーがtypdefを構造体のためのものだと思ってしまっています。

typedefは他のあらゆる型に対して名前を与えることが可能です。

```haxe
typedef IA = Array<Int>;
```

これにより`Array<Int>`が使われる場所で、代わりに`IA`を使うことが可能になります。この場合はほんの数回のタイプ数しか減らせませんが、より複雑な複合型の場合は違います。これこそが、typedefと構造体が強く結びついて見える理由です。

```haxe
typedef User = {
    var age : Int;
    var name : String;
}
```

typedefはテキスト上の置き換えではなく、実は本物の型です。Haxe標準ライブラリの`Iterable`のように[型パラメータ](type-system-type-parameters.md)を持つことができます。

```haxe
typedef Iterable<T> = {
	function iterator() : Iterator<T>;
}
```

---

Previous section: [型システム](type-system.md)

Next section: [拡張](type-system-extensions.md)