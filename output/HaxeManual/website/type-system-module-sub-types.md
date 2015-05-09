## 3.7.1 モジュールの従属型

モジュール従属型とは、その型を定義しているモジュールの名前と異なる名前の型です。これにより、一つの.hxファイルに複数の型の定義が可能になり、これらの型はモジュール内では無条件でアクセス可能で、ほかのモジュールからも`package.Module.Type`の形式でアクセスできます。

```haxe
var e:haxe.macro.Expr.ExprDef;
```

ここでは`haxe.macro.Expr`の従属型`ExprDef`にアクセスしています。

従属型の関係は、実行時には影響を与えません。publicの従属型はそのパッケージのメンバーになります。このため、同じパッケージの別々のモジュールで同じ従属型を定義した場合に衝突を起こします。
The sub-type relation is not reflected at run-time. That is, public sub-types become a member of their containing package, which could lead to conflicts if two modules within the same package tried to define the same sub-type. Naturally, the Haxe compiler detects these cases and reports them accordingly. In the example above `ExprDef` is generated as `haxe.macro.ExprDef`.

Sub-types can also be made private:

```haxe
private class C { ... }
private enum E { ... }
private typedef T { ... }
private abstract A { ... }
```

> ##### Define: Private type
>
> A type can be made private by using the `private` modifier. As a result, the type can only be directly accessed from within the [module](dictionary.md#define-module) it is defined in.
> 
> Private types, unlike public ones, do not become a member of their containing package.

The accessibility of types can be controlled more fine-grained by using [access control](lf-access-control.md).

---

Previous section: [モジュールとパス](type-system-modules-and-paths.md)

Next section: [Import](type-system-import.md)