## 9.2 引数

ほとんどの場合、マクロへの引数は式を`Expr`列挙型インスタンスとして表現したものです。これらは構文解析されていますが、型付けはされていません。つまり、Haxeの構文ルールに従うものであればどのようなものもあり得ます。マクロではその構造を解析したり、`haxe.macro.Context.typeof()`を使ってその構造を調べたりできます。

マクロへの引数は評価できるとは限らないため、意図する副作用が起きる保証がないことに気を付けてください。また、引数の式はマクロで複製されて戻り値の式で複数使うことができるというのも重要です。

```haxe
import haxe.macro.Expr;

class Main {
  static public function main() {
    var x = 0;
    var b = add(x++);
    trace(x); // 2
  }

  macro static function add(e:Expr) {
    return macro $e + $e;
  }
}
```

`add`マクロは、`x++`を引数としてよびだされており、[式の実体化](macro-reification-expression.md)を使って`x++ + x++`を返しており、このため2度インクリメントがされています。

---

Previous section: [マクロコンテクスト](macro-context.md)

Next section: [ExprOf](macro-ExprOf.md)