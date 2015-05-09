## 3.6.1 トップダウンの推論

多くの場合、ある型はその型で要求される型を推論します。しかし一部では、要求される型で型を推論します。これを**トップダウンの推論**と呼びます。

> ##### Define: 要求される型
>
> 要求される型は、式の型が式が型付けされるより前にわかっている場合に現れます。例えば、式が関数の呼び出しの引数の場合です。この場合、[トップダウンの推論](type-system-top-down-inference.md)と呼ばれる方法で、式に型が伝搬します。

良い例は型の混ざった配列です。[ダイナミック](types-dynamic.md)で書いた通り、`[1, "foo"]`は要素の型を決定できないので、コンパイラはこれを拒絶します。これはトップダウンの推論を使えば解決します。

```haxe
class Main {
  static public function main() {
    var a:Array<Dynamic> = [1, "foo"];
  }
}
```

ここでは、`[1, "foo"]`に型付けするとき、要求される型が`Array<Dynamic>`であり、その要素は`Dynamic`であるとわかります。コンパイラが[共通の基底型](type-system-unification-common-base-type.md)を探す(そして失敗する)通常の単一化の挙動の代わりに、個々の要素が`Dynamic`で単一化され、型付けされます。

[ジェネリック型パラメータのコンスラクト](type-system-generic-type-parameter-construction.md)の紹介で、もう一つトップダウンの推論の面白い利用例を見ています。

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

`String`と`haxe.Template`の明示された型が、`make`の戻り値の型の決定に使われています。これは、`make()`の戻り値が変数へ代入されるのがわかっているので動作します。この方法を使うと、未知の型`T`をそれぞれ`String`と`haxe.Template`に紐づけることが可能です。

---

Previous section: [型推論](type-system-type-inference.md)

Next section: [制限](type-system-inference-limitations.md)