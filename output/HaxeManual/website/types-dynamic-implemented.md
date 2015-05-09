## 2.7.2 ダイナミックを実装(implements)する

クラスは`Dynamic`と`Dynamic<T>`を[実装](types-interfaces.md)することができます。
これにより任意のフィールドへのアクセスが可能になります。`Dynamic`の場合、フィールドはあらゆる型になる可能性があり、`Dynamic<T>`の場合、フィールドはパラメータの型と矛盾しない型のみに強制されます。

```haxe
class ImplementsDynamic
  implements Dynamic<String> {
  public var present:Int;
  public function new() {}
}

class Main {
  static public function main() {
    var c = new ImplementsDynamic();
    // valid, present is an existing field
    c.present = 1;
    // valid, assigned value is a String
    c.stringField = "foo";
    // error, Int should be String
    //c.intField = 1;
  }
}
```

`Dynamic`を実装しても、 他のインターフェースが要求する実装を満たすことにはなりません。明示的な実装が必要です。

型パラメータなしの`Dynamic`を実装したクラスでは、特殊なメソッド`resolve`を利用することができます。[読み込みアクセス](dictionary.md#define-read-access)がありフィールドが存在しなかった場合、`resolve`メソッドが以下のように呼び出されます。

```haxe
class Resolve implements Dynamic<String> {
  public var present:Int;
  public function new() {}
  function resolve(field:String) {
    return "Tried to resolve " +field;
  }
}

class Main {
  static public function main() {
    var c = new Resolve();
    c.present = 2;
    trace(c.present);
    trace(c.resolveMe);
  }
}
```

---

Previous section: [型パラメータ付きのダイナミック](types-dynamic-with-type-parameter.md)

Next section: [抽象型(abstract)](types-abstract.md)