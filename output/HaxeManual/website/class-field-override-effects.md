## 4.3.2 変性とアクセス修飾子の影響

オーバーライドは[変性](type-system-variance.md)のルールと深い関わりがあります。というのは、引数の型が**反変性** (より一般的な型)を許容し、戻り値の型は**共変性**(より具体的な型)を許容するからです。

```haxe
class Base {
  public function new() { }
}

class Child extends Base {
  private function method(obj:Child):Child {
    return obj;
  }
}

class ChildChild extends Child {
  public override function method(obj:Base):ChildChild {
    return null;
  }
}

class Main {
  static public function main() { }
}
```

直観的には、この挙動は引数は関数へ「書き込み」であり戻り値は「読み込み」であるという事実から来ています。

この例から、[可視性](class-field-visibility.md)が変更できるということもわかります。オーバーライドされる側のフィールドが`private`の場合は、`public`のフィールドでオーバーライドすることができます。ただし、そのほかの場合は、可視性の変更はできません。

[`inline`](class-field-inline.md)の宣言をされたフィールドもオーバーライドできません。これはインライン化がコンパイル時に関数の中身で書き換えを行う一方で、オーバーライドのフィールドは実行時に解決される、という衝突を避けるためです。

---

Previous section: [メソッドのオーバーライド(override)](class-field-overriding.md)

Next section: [アクセス修飾子](class-field-access-modifier.md)