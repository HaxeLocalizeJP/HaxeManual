## 3.4 変性(バリアンス)

変性とは他のものとの関連を表すもので、特に型パラメータに関するものが連想されます。そして、この文脈では驚くようなことがよく起こります。変性のエラーを起こすことはとても簡単です。

```haxe
class Base {
  public function new() { }
}

class Child extends Base { }

class Main {
  public static function main () {
    var children = [new Child()];
    // Array<Child> should be Array<Base>
    // Type parameters are invariant
    // Child should be Base
    var bases:Array<Base> = children;
    }
}
```

見てわかるとおり、`Child`は`Base`に代入できるにもかかわらず、`Array<Child>`を`Array<Base>`に代入することはできません。この理由は少々予想外のものかもしれません。それはこの配列への書き込みが可能だからです。例えば、`push()`メソッドです。この変性のエラーを無視してしまうことは簡単です。

```haxe
class Base {
  public function new() { }
}

class Child extends Base { }

class OtherChild extends Base { }

class Main {
  public static function main () {
    var children = [new Child()];
    // subvert type checker
    var bases:Array<Base> = cast children;
    bases.push(new OtherChild());
    for(child in children) {
      trace(child);
    }
  }
}
```

ここでは[cast](expression-cast.md)を使って型チェッカーを破壊して、12行目の代入を可能にしてしまっています。`bases`は元々の配列への参照を持っており、`Array<Base>`の型付けをされています。このため、`Base`に適合する別の型の`OtherChild`を配列に追加できます。しかし、元々の`children`の参照は`Array<Child>`のままです。そのため良くないことに繰り返し処理の中で`OtherChild`のインスタンスに出くわします。

もし`Array`が`push()`メソッドを持っておらず、他の編集方法も無かったならば、適合しない型を追加することができなくなるのでこの代入は安全になります。Haxeでは[構造的部分型付け](type-system-structural-subtyping.md)を使って型を適切に制限することでこれを実現できます。

```haxe
class Base {
  public function new() { }
}

class Child extends Base { }

typedef MyArray<T> = {
  public function pop():T;
}

class Main {
  public static function main () {
    var a = [new Child()];
    var b:MyArray<Base> = a;
  }
}
```

`b`は`MyArray<Base>`として型付けされており、`MyArray`は`pop()`メソッドしか持たないため、安全に代入することができます。`MyArray`には適合しない型を追加できるメソッドを持っておらず、このことは**共変性**と呼ばれます。

> ##### Define: 共変性
>
> [複合型](dictionary.md#define-compound-type)がそれを構成する型よりも一般な型で構成される複合型に代入できる場合に、共変であるという。 つまり、読み込みのみが許されて書き込みができない場合です。

> ##### Define: 反変性
>
> [複合型](dictionary.md#define-compound-type)がそれを構成する型よりも特殊な型で構成される複合型に代入できる場合に、反変であるという。 つまり、書き込みのみが許されて読み込みができない場合です。

---

Previous section: [ジェネリック型パラメータのコンストラクト](type-system-generic-type-parameter-construction.md)

Next section: [単一化(ユニフィケーション)](type-system-unification.md)