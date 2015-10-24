## 9.6.3 ビルド順序

型のビルド順序は未定義であり、それは[ビルドマクロ](macro-type-building.md)の実行順序についても同じです。いくつかのルールは決まってはいますが、ビルドマクロは実行順序に依存しないようにすることを強く推奨します。もし型ビルドを複数回実行する必要があるなら、マクロのコードで直接解決してください。ビルドマクロが同じ型に対して複数回実行されるのを避けるためには、状態を静的変数にいれておくか、型に[メタデータ](lf-metadata.md)を追加するのが有効です。

```haxe
import haxe.macro.Context;
import haxe.macro.Expr;

#if !macro
@:autoBuild(MyMacro.build())
#end
interface I1 { }

#if !macro
@:autoBuild(MyMacro.build())
#end
interface I2 { }

class C implements I1 implements I2 { }

class MyMacro {
  macro static public function build():Array<Field> {
    var c = Context.getLocalClass().get();
    if (c.meta.has(":processed")) return null;
    c.meta.add(":processed",[],c.pos);
    // process here
    return null;
  }
}

class Main {
  static public function main() { }
}
```

`I1`と、`I2`の両方のインターフェースが`:autoBuild`を持っており、`C`クラスに対して2度ビルドマクロが実行されます。ここではクラスに`:processed`メタデータを足して、2度目の実行でそれを確認することで重複した処理を回避しています。

---

Previous section: [静的拡張](macro-limitations-static-extension.md)

Next section: [初期化マクロ](macro-initialization.md)