## 9.3.1 式の実体化

式の実体化を使うと、手軽に`haxe.macro.Expr`のインスタンスを作成できます。Haxeのコンパイラは通常のHaxeの構文を式のオブジェクトへと変換します。これにはエスケープの仕組みがあり、それらはすべて`$`の文字からはじまります。

* `${}`または`$e{}`: `Expr -> Expr` これは式の構築に使います。`{ }`の中の式が評価されてその値がその位置に配置されます。
* `$a{}`: `Expr -> Array<Expr>` `Array<Expr>`が要求される場所（例えば、呼び出し引数や、ブロックの要素）で使用すると、`$a{}`の値を配列にします。そのほかの場合は、配列の宣言を生成します。
* `$b{}`: `Array<Expr> -> Expr` 与えられた配列からブロック式を生成します。
* `$i{}`: `String -> Expr` 与えられた文字列の識別子を生成します。
* `$p{}`: `Array<String> -> Expr` 文字列の配列から、フィールドアクセス式を生成します。
* `$v{}`: `Dynamic -> Expr` その引数の型にあわせて式を作ります。これは[基本型](types-basic-types.md)と[列挙型インスタンス](types-enum-instance.md)でのみ動作することが保証されています。

加えて`@:pos(p)`[メタデータ](lf-metadata.md)を使って、実体化の場所の代わりに`p`に式の位置を対応させられます。

この種類の実体化は式が期待されている場所でのみ動作します。また、`object.${fieldName}`は動作しませんが、`object.$fieldName`は動作します。これはすべての文字列を期待する場所で同じです。

* フィールドアクセス `object.$name`
* 変数名 `var $name = 1;`

##### since Haxe 3.1.0

* フィールド名 `{ $name: 1} `
* 関数名 `function $name() { }`
* キャッチの変数名 `try e() catch($name:Dynamic) {}`

---

Previous section: [実体化（レイフィケーション）](macro-reification.md)

Next section: [型の実体化](macro-reification-type.md)