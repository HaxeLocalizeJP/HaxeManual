## 9.2.2 定数の式

マクロは[定数](expression-constants.md)の引数を要求するように宣言することができます。

```haxe
class Main {
  static public function main() {
    const("foo", 1, 1.5, true);
  }

  macro static function const(s:String, i:Int, f:Float, b:Bool) {
    trace(s);
    trace(i);
    trace(f);
    trace(b);
    return macro null;
  }
}
```

これによりわざわざ式を経由するなく、コンパイラはその定数を直接使うことができます。

---

Previous section: [ExprOf](macro-ExprOf.md)

Next section: [残りの引数](macro-rest-argument.md)