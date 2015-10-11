## 4.3.1 メソッドのオーバーライド(override)

フィールドのオーバーライドは、クラスの階層構造を作る助けになります。オーバーライドはさまざまなデザインパターンで活用されますが、ここでは基本的な機能のみを説明します。クラスでオーバーライドを使うためには、[親クラス](types-class-inheritance.md)を持つ必要があります。次の例を見てみましょう。

```haxe
class Base {
  public function new() { }
  public function myMethod() {
    return "Base";
  }
}

class Child extends Base {
  public override function myMethod() {
    return "Child";
  }
}

class Main {
  static public function main() {
    var child:Base = new Child();
    trace(child.myMethod()); // Child
  }
}

```

ここで重要なのは以下の要素です。

* `Base`クラスは`myMethod`メソッドとコンストラクタを持つ。
* `Child`は`Base`を継承しており、`override`を宣言した`myMethod`を持つ。
* `Main`クラスは`main`メソッドで`Child`をインスタンス化して、`Base`型を明示した`child`変数に代入して、その`myMethod()`を呼び出している。

`child`変数の`Base`型を明示することで、コンパイル時には`Base`型であっても、実行時には`Child`型の`myMethod`メソッドが実行されるという重要なことを強調しました。これはフィールドのアクセスが実行時に動的に解決されるからです。

`Child`クラスでは`super.methodName()`を呼び出して、オーバーライドされたメソッドにアクセスすることができます。

```haxe
class Base {
  public function new() { }
  public function myMethod() {
    return "Base";
  }
}

class Child extends Base {
  public override function myMethod() {
    return "Child";
  }

  public function callHome() {
    return super.myMethod();
  }

}

class Main {
  static public function main() {
    var child = new Child();
    trace(child.callHome()); // Base
  }
}

```

`new`コンストラクタ内での`super()`の使用については、[継承](types-class-inheritance.md)の節で説明してあります。

---

Previous section: [メソッド](class-field-method.md)

Next section: [変性とアクセス修飾子の影響](class-field-override-effects.md)