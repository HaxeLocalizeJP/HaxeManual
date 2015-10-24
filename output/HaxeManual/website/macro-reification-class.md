## 9.3.3 クラスの実体化

`haxe.macro.Expr.TypeDefinition`のインスタンスを取得するためにも、実体化は使えます。これには以下のような、`macro class`の構文を使います。

```haxe
class Main {
  macro static function generateClass(funcName:String) {
    var c = macro class MyClass {
      public function new() { }
      public function $funcName() {
        trace($v{funcName} + " was called");
      }
    }
    haxe.macro.Context.defineType(c);
    return macro new MyClass();
  }

  public static function main() {
    var c = generateClass("myFunc");
    c.myFunc();
  }
}
```

生成された`TypeDefinition`のインスタンスは、多くの場合は`haxe.macro.Context.defineType`に渡すことで、呼び出し対象のコンテクストに（マクロコンテクスト自体にではありません）新しい型を追加して使います。

この種類の実体化は`TypeDefinition`の`fields`の配列から`haxe.macro.Expr.Field`のインスタンスの取得するのにも便利です。

---

Previous section: [型の実体化](macro-reification-type.md)

Next section: [Tools](macro-tools.md)