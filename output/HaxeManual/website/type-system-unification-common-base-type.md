## 3.5.5 共通の基底型

複数の型の組み合わせが与えられたとき、そのすべての型が**共通の基底型**で単一化されます。

```haxe
class Base {
  public function new() { }
}

class Child1 extends Base { }
class Child2 extends Base { }

class UnifyMin {
  static public function main() {
    var a = [new Child1(), new Child2()];
    $type(a); // Array<Base>
  }
}
```

`Base`とは書かれていないにも関わらず、Haxeコンパイラは`Child1`と`Child2`の共通の型として`Base`を推論しています。Haxeコンパイラはこの方法の単一化を以下の場面で採用しています。

* 配列の宣言
* `if`/`else`
* `switch`のケース

---

Previous section: [関数の戻り値](type-system-unification-function-return.md)

Next section: [型推論](type-system-type-inference.md)