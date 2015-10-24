## 9.5.1 列挙型ビルド

[列挙型](types-enum-instance.md)のビルドは、クラスのビルドと類似しており簡単な対応関係があります。

* 引数を持たない列挙型は変数フィールド`FVar`です。
* 引数を持つ列挙型はメソッドフィールド`FFun`です。

```haxe
import haxe.macro.Context;
import haxe.macro.Expr;

class EnumBuildingMacro {
  macro static public function build():Array<Field> {
    var noArgs = makeEnumField("A", FVar(null, null));
    var eFunc = macro function(value:Int) { };
    var fInt = switch (eFunc.expr) {
      case EFunction(_,f): f;
      case _: throw "false";
    }
    var intArg = makeEnumField("B", FFun(fInt));
    return [noArgs, intArg];
  }

  static function makeEnumField(name, kind) {
    return {
      name: name,
      doc: null,
      meta: [],
      access: [],
      kind: kind,
      pos: Context.currentPos()
    }
  }
}
```
```haxe
@:build(EnumBuildingMacro.build())
enum E { }

class Main {
  static public function main() {
    switch(E.A) {
      case A:
      case B(v):
    }
  }
}
```

列挙型`E`は`:build`メタデータの修飾されており、呼び出されたマクロが2つのコンストラクタ`A`と`B`を追加しています。`A`は`FVar(null, null)`、つまり引数の無いコンストラクタとして追加されています。`B`は[実体化](macro-reification-expression.md)を使って、`Int`引数1つを持つ`haxe.macro.Expr.Function`を取得しています。

`main`メソッドは[マッチング](lf-pattern-matching.md)によって生成された列挙型の構造を証明しています。これで、生成された型が以下と同じだということがわかります。

```haxe
enum E {
	A;
	B(value:Int);
}
```

---

Previous section: [型ビルド](macro-type-building.md)

Next section: [@:autoBuild](macro-auto-build.md)