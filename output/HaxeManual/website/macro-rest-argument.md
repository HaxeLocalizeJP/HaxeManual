## 9.2.3 残りの引数

マクロの引数の最後が`Array<Expr>`型だった場合、任意の個数の追加の引数を渡して、それを配列として利用できます。

```haxe
import haxe.macro.Expr;

class Main {
  static public function main() {
    myMacro("foo", a, b, c);
  }

  macro static function myMacro(e1:Expr, extra:Array<Expr>) {
    for (e in extra) {
      trace(e);
    }
    return macro null;
  }
}
```

---

Previous section: [定数の式](macro-constant-arguments.md)

Next section: [実体化（レイフィケーション）](macro-reification.md)