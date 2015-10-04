## 5.23.2 セーフキャスト

[非セーフキャスト](expression-cast-unsafe.md)とは異なり、実行時のキャスト失敗の挙動を持つのがセーフキャストです。

```haxe
class Base {
  public function new() { }
}

class Child1 extends Base {}

class Child2 extends Base {}

class Main {
  public static function main() {
    var child1:Base = new Child1();
    var child2:Base = new Child2();
    cast(child1, Base);
    // Exception: Class cast error
    cast(child1, Child2);
  }
}
```

この例では、最初に`Child1`から`Base`へとキャストしています。これは、`Child1`が`Base`型の[子クラス](types-class-inheritance.md)なので、成功しています。次に`Child2`へキャストしていますが、`Child1`のインスタンスは`Child2`ではないので失敗しています。

Haxeコンパイラは、この場合`String`型の[例外を投げます](expression-throw.md)。この例外は、[`try/catch`ブロック](expression-try-catch.md)を使って捕捉できます。

セーフキャストは実行時のオーバーヘッドがあります。重要なのは、コンパイラがすでにチェックを行っているので、`Std.is`のようなチェックを自分で入れるのは、余分だということです。`String`型の例外を捕捉する、try-catchを行うのがセーフキャストで意図された用途です。

---

Previous section: [非セーフキャスト](expression-cast-unsafe.md)

Next section: [型チェック](expression-type-check.md)