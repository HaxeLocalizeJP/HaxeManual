## 9.5.2 @:autoBuild

クラスが`:autoBuild`メタデータを持つ場合、それを継承するすべてのクラスに`:build`メタデータを生成します。インターフェースが`:autoBuild`メタデータを持つ場合、それを継承するすべてのインターフェースとすべての実装クラスに`:build`メタデータを生成します。`:autoBuild`はそのクラスやインターフェース自身には`:build`を適用しないことに気をつけてください。

```haxe
import haxe.macro.Context;
import haxe.macro.Expr;

class AutoBuildingMacro {
  macro static public
  function fromInterface():Array<Field> {
    trace("fromInterface: " + Context.getLocalType());
    return null;
  }

  macro static public
  function fromBaseClass():Array<Field> {
    trace("fromBaseClass: " + Context.getLocalType());
    return null;
  }
}
```
```haxe
@:autoBuild(AutoBuildingMacro.fromInterface())
interface I { }

interface I2 extends I { }

@:autoBuild(AutoBuildingMacro.fromBaseClass())
class Base { }

class Main extends Base implements I2 {
  static public function main() { }
}
```

コンパイル中に以下の出力がされます。

```haxe
AutoBuildingMacro.hx:6:
  fromInterface: TInst(I2,[])
AutoBuildingMacro.hx:6:
  fromInterface: TInst(Main,[])
AutoBuildingMacro.hx:11:
  fromBaseClass: TInst(Main,[])
```

これらのマクロ実行順序は不定であることを留意しておきましょう、詳しくは[ビルド順序](macro-limitations-build-order.md)で説明されています。

---

Previous section: [列挙型ビルド](macro-enum-building.md)

Next section: [@:genericBuild](macro-generic-build.md)