## 4.2.3 ゲッターとセッターのルール

アクセサメソッドの可視性は、プロパティの可視性に影響を与えません。つまり、プロパティが`public`であってもそのゲッターは`private`でも構わないということです。

ゲッターとセッターは、その物理的フィールドにアクセスしてデータを使用する場合があります。アクセサメソッド自身からそのフィールドへのアクセスが行われた場合、コンパイラはこれをアクセサメソッド経由しないアクセスと見なします。これにより無限ループが回避されます。

```haxe
class Main {
  public var x(default, set):Int;

  function set_x(newX) {
    return x = newX;
  }

  static public function main() {}
}
```

しかし、フィールドが少なくとも1つ、`default`または`null`のアクセス識別子を持つ時のみ、コンパイラはその物理的フィールドが存在していると考えます。

> ##### Define: 物理的フィールド
>
> 以下のいずれかの場合にフィールドが**物理的**であると考えられます
> 
> * [変数](class-field-variable.md)
> * 読み込みアクセスか書き込みアクセスのアクセス識別子が`default`または`null`である[プロパティ](class-field-property.md)
> * `:isVar`[メタデータ](lf-metadata.md)がつけられた[プロパティ](class-field-property.md)
> 
> 

これらのケースに含まれない場合、アクセサメソッド内での自身のフィールドへのアクセスはコンパイルエラーを起こします。

```haxe
class Main {
  // This field cannot be accessed because it is not a real variable
  public var x(get, set):Int;

  function get_x() {
    return x;
  }

  function set_x(x) {
    return this.x = x;
  }

  static public function main() {}
}

```

物理的フィールドが必要であれば、`:isVar`[メタデータ](lf-metadata.md)をフィールドつけることでそれを強制できます。

```haxe
class Main {
  // @isVar forces the field to be physical allowing the program to compile.
  @:isVar public var x(get, set):Int;

  function get_x() {
    return x;
  }

  function set_x(x) {
    return this.x = x;
  }

  static public function main() {}
}

```

> ##### Trivia: プロパティのセッターの型
>
> 新しいHaxeのユーザーにとって、セッターの型が`T->Void`ではなくて`T->T`でなくてはいけないというのはなじみがなく、驚かれるかもしれません。ではなぜ**setter**が値を返す必要があるのでしょうか？
> 
> それはセッターを使ったフィールドへの代入を右辺の式として使いたいからです。`x = y = 1`のような連結された式は、`x = (y = 1)`として評価されます。`x`に`y = 1`の結果を代入するためには、`y = 1`が値を持たなければなりません。`y`のセッターの戻り値が`Void`であれば、それは不可能です。

---

Previous section: [型システムへの影響](class-field-property-type-system-impact.md)

Next section: [メソッド](class-field-method.md)