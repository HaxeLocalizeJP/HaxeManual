## 6.10 アクセス制御

基本的な[可視性](class-field-visibility.md)のオプションで十分でない場合、アクセス制御が役に立ちます。アクセス制御は**クラスレベル**と**フィールドレベル**、そして以下の2方向の適用が可能です。

* アクセス許可: `:allow(target)`[メタデータ](lf-metadata.md)を使うことで、対象を与えられたクラスやフィールドからのアクセスを許容するようにします。
* アクセス強制: `:access(target)`[メタデータ](lf-metadata.md)を使うことで、対象からの与えられたクラスやフィールドへのアクセスを強制的に可能にします。

このとき、`target`には以下の[ドットパス](dictionary.md#define-type-path)を使うことができます。

* **クラスフィールド**
*　**クラス**、**抽象型**
* **パッケージ**

`target`はインポートを参照しません。つまり、完全なパスを正しく記述する必要があります。

クラスや抽象型の場合、アクセスの変更はその型のすべてのフィールドに反映されます。同じように、パッケージの場合、アクセスの変更はそのパッケージ内のすべての型のすべてのフィールドに反映されます。

```haxe
@:allow(Main)
class MyClass {
  static private var foo: Int;
}

class Main {
  static public function main() {
    MyClass.foo;
  }
}
```

`MyClass.foo`は`MyClass`に`@:allow(Main)`を適用しているので、`main`メソッドからアクセスできます。このコードは`@:allow(Main.main)`でも動作しますし、以下のように`MyClass`クラスの`foo`フィールドにメタデータをつけても動作します。

```haxe
class MyClass {
  @:allow(Main.main)
  static private var foo: Int;
}

class Main {
  static public function main() {
    MyClass.foo;
  }
}
```

もし型にこのようなアクセスの変更ができない場合は、アクセス強制の方法が役立つかもしれません。

```haxe
class MyClass {
  static private var foo: Int;
}

class Main {
  @:access(MyClass.foo)
  static public function main() {
    MyClass.foo;
  }
}
```

`@:access(MyClass.foo)`のメタデータは`main`メッソドからの`foo`の可視性を変更します。

> ##### Trivia: メタデータという選択肢
>
> アクセス制御の言語機能には、新しい構文の導入ではなく、Haxeのメタデータの構文を使いました。これには以下のいくつかの理由があります。
> 
> * 追加の構文は言語の構文解析を複雑にして、さらにはキーワードを増やしてしまします。
> * 追加の構文は言語のユーザーに追加の学習を要求します。メタデータであれば、それは既知のものです。
> * メタデータはこの拡張を行うのに十分な表現力を持っています。
> * メタデータはHaxeのマクロから、アクセスし、生成し、編集することが可能です。
> 
> もちろん、メタデータ構文の主な不利益はメタデータの名前、クラスやパッケージ名についてスペルミス(例えば、@:acesss)をした場合に何のエラーも出ないことです。しかし、この機能では実際に`private`フィールドにアクセスしようとした場合にエラーがでるので、エラーが沈黙しているということにはなりえません。

##### since Haxe 3.1.0

アクセスが[インターフェース](types-interfaces.md)に対して許可される場合、そのインターフェースを実装しているすべてのクラスに対してそれが引き継がれます。

```haxe
class MyClass {
  @:allow(I)
  static private var foo: Int;
}

interface I { }

class Main implements I {
  static public function main() {
    MyClass.foo;
  }
}
```

これは親クラスの場合も同様です。その場合、子クラスに対して引き継ぎがされます。

> ##### Trivia: 壊れた機能
>
> 子クラスや実装クラスへのアクセスの継承はHaxe3.0への導入を予定されており、そしてドキュメントまでも作られていました。しかし、このマニュアルを作る過程でこのアクセス制御の実装がぬけ落ちていることを発見しました。

---

Previous section: [メタデータ](lf-metadata.md)

Next section: [インラインコンストラクタ](lf-inline-constructor.md)