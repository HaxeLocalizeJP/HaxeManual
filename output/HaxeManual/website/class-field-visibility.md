## 4.4.1 可視性

フィールドの可視性はデフォルトでは**private**です。つまり、そのクラス自身とその子クラスからしかアクセスできません。`public`アクセス修飾子を使うことでどこからでもアクセスができるようにフィールドを公開できます。

```haxe
class MyClass {
  static public function available() {
    unavailable();
  }
  static private function unavailable() { }
}

class Main {
  static public function main() {
    MyClass.available();
    // privateのフィールドunavailableにアクセスできません。
    MyClass.unavailable();
  }
}
```

`Main`から`MyClass`の`available`フィールドへのアクセスは、フィールドが`public`なので許可されます。しかし`unavailable`については、`MyClass`からのアクセスは許可されますが`Main`からは許可されません。これはフィールドが`private`だからです(ここでは無くてもいい明示的宣言を行っています)。

この例では**static**フィールドを使って可視性の実演をしていますが、メンバフィールドでもこのルールは同じです。次の例は[継承](types-class-inheritance.md)がある場合の可視性について実演しています。

```haxe
class Base {
  public function new() { }
  private function baseField() { }
}

class Child1 extends Base {
  private function child1Field() { }
}

class Child2 extends Base {
  public function child2Field() {
    var child1 = new Child1();
    child1.baseField();
    // privateなフィールドchild1Fieldにアクセスできません
    child1.child1Field();
  }
}

class Main {
  static public function main() { }
}
```

`Child2`からの、`Child1`という異なる型の`child1.baseField()`へのアクセスが許可されていることがわかります。これはこのフィールドが共通の親クラスの`Base`で定義されているからです。反対に`child1Field`については、`Child2`からはアクセスできません。

可視性の修飾子の省略はデフォルトでは`private`になることが多いですが、以下の場合は例外的に`public`になります。

1. クラスが`extern`として宣言されている。
2. [インターフェース](types-interfaces.md)で宣言しているフィールドである。
3. `public`フィールドを[オーバーライド](class-field-overriding.md)している。

> ##### Trivia: protected
>
> HaxeにはJavaやC++やその他のオブジェクト指向言語で知られる`protected`キーワードはありません。しかし、`private`の挙動がこれらの言語の`protected`の挙動に当たります。つまり、Haxeにはこれらの言語の`private`に当たる挙動がありません。

---

Previous section: [アクセス修飾子](class-field-access-modifier.md)

Next section: [inline(インライン化)](class-field-inline.md)