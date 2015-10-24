## 9.2.1 ExprOf

`Expr`はあらゆる入力と一致するため、Haxeでは`haxe.macro.ExprOf<T>`型を提供しています。ほとんどの面では`Expr`と同じですが、受け入れる式の型を強制することができます。これは[静的拡張](lf-static-extension.md)と合わせてマクロを使うときに便利です。

```haxe
import haxe.macro.Expr;
using Main;

class Main {
  static public function main() {
    identity("foo");
    identity(1);
    "foo".identity();
    // Intにはidentityフィールドはありません。
    //1.identity();
  }

  macro static function identity(e:ExprOf<String>) {
    return e;
  }
}
```

上2種類の`identity`の呼び出しは両方とも問題ありません。たとえ引数が`ExprOf<String>`で宣言されていてもです。`Int`型の`1`が許容されることに驚くかもしれませんが、[マクロの引数](macro-arguments.md)での説明からの論理的な必然性があります。つまり引数の式は型付けされないので、コンパイラは[単一化](type-system-unification.md)の一致チェックができないというわけです。

次の2つの行の呼び出しは、静的拡張を使っている点で状況が異なります（`using Main`に注目してください）。静的拡張では左側（`"foo"`や`1`）の型によって、`identity`のフィールドアクセスが意味を持ちます。これにより引数の型に対しての型チェックが可能になり、`1.identity()`が`Main.identity()`のフィールドが合わないという結果になっています。

---

Previous section: [引数](macro-arguments.md)

Next section: [定数の式](macro-constant-arguments.md)