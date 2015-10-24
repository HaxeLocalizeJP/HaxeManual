## 9.3.2 型の実体化

型の実体化を使うと、手軽に`haxe.macro.Expr.ComplexType`のインスタンスを生成できます。構文は`macro : Type`で、`Type`は正当な型のパスの式であれば何でもかまいません。この構文は通常の明示的な型注釈のコードに似ています（例えば、`var x:Type`の変数宣言）。

`ComplexType`のコンストラクタごとに、以下の別々の構文があります。

* `TPath`: `macro : pack.Type`
* `TFunction`: `macro : Arg1 -> Arg2 -> Return`
* `TAnonymous`: `macro : { field: Type }`
* `TParent`: `macro : (Type)`
* `TExtend`: `macro : {> Type, field: Type }`
* `TOptional`: `macro : ?Type`

---

Previous section: [式の実体化](macro-reification-expression.md)

Next section: [クラスの実体化](macro-reification-class.md)