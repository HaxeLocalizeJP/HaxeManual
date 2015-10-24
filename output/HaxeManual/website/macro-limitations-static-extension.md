## 9.6.2 静的拡張

マクロと[静的拡張](lf-static-extension.md)の概念には多少の衝突があります。静的拡張は使用される関数を決定するために既知の型を要求しますが、構文が型付けされる前に実行されます。ですからこの2つの機能を合わせて使うと問題が生じるというのは驚くことではありません。Haxe 3.0では型付けされた式を元の構文の式に戻す変換を試みます。これは必ず成功するわけではなく、重要な情報が失われることもあります。これらについては十分に気を付けたうえで使用することを推奨します。

##### since Haxe 3.1.0

静的拡張とマクロの合わせた使用について3.1.0のリリースで修正がされました。Haxeコンパイラはマクロの引数から元の式の復元を試行しなくなった代わりに、特殊な`@:this this`の式を渡すようになりました。式の構造については何の情報も提供しない代わりに正しく型付けができます。

```haxe
import haxe.macro.Context;
import haxe.macro.Expr;

using Main;
using haxe.macro.Tools;

class Main {
  static public function main() {
    #if !macro
    var a = "foo";
    a.test();
    #end
  }

  macro static function test(e:ExprOf<String>) {
    trace(e.toString()); // @:this this
    // TInst(String,[])
    trace(Context.typeof(e));
    return e;
  }
}
```

---

Previous section: [制限](macro-limitations.md)

Next section: [ビルド順序](macro-limitations-build-order.md)