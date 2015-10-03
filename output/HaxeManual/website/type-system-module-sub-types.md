## 3.7.1 モジュールのサブタイプ(従属型)

モジュールサブタイプとは、その型を定義しているモジュールの名前と異なる名前の型です。これにより、一つの.hxファイルに複数の型の定義が可能になり、これらの型はモジュール内では無条件でアクセス可能で、ほかのモジュールからも`package.Module.Type`の形式でアクセスできます。

```haxe
var e:haxe.macro.Expr.ExprDef;
```

ここでは`haxe.macro.Expr`のサブタイプ`ExprDef`にアクセスしています。

この従属関係は、実行時には影響を与えません。このため、publicなサブタイプはパッケージのメンバーになり、同じパッケージの別々のモジュールで同じサブタイプを定義した場合に衝突を起こします。当然、Haxeコンパイラはこれを検出して適切に報告します。上記の例では`ExprDef`は`haxe.macro.ExprDef`として出力されます。

サブタイプは以下のように`private`にすることが可能です。

```haxe
private class C { ... }
private enum E { ... }
private typedef T { ... }
private abstract A { ... }
```

> ##### Define: private型
>
> 型は`private`の修飾子を使って可視性を下げることが可能です。`private`修飾子をつけると、その型を定義している[モジュール](dictionary.md#define-module)以外からは、直接アクセスできなくなります。
> 
> `private`な型は`public`な型とは異なり、パッケージにはふくまれません。

型の可視性は、[アクセスコントーロル](lf-access-control.md)を使うことでより細かく制御することができます。

---

Previous section: [モジュールとパス](type-system-modules-and-paths.md)

Next section: [インポート(import)](type-system-import.md)