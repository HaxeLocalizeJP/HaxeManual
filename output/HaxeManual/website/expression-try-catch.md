## 5.18 try/catch

Haxeでは`try/catch`構文を使うことで値を捕捉することができます。

```haxe
try try-expr
catch(varName1:Type1) catch-expr-1
catch(varName2:Type2) catch-expr-2
```

実行時に、`try-expression`の評価が、[`throw`](expression-throw.md)を引き起こすと、後に続く`catch`ブロックのいずれかに捕捉されます。これらのブロックは以下から構成されます

* `throw`された値を割り当てる変数の名前。
* 捕捉する値の型を決める、明示的な型注釈
* 捕捉したときに実行される式

Haxeでは、あらゆる種類の値を`throw`して、`catch`することができます。その型は特定の例外やエラークラスに限定されません。`catch`ブロックは上から下へとチェックされていき、投げられた値と型が適合する最初のブロックが実行されます。

この過程はコンパイル時の[単一化](type-system-unification.md)に似ています。しかし、この判定は実行時に行われるものでいくつかの制限があります。

* 型は実行時に存在するものでなければならない。[クラスインスタンス](types-class-instance.md)、[列挙型インスタンス](types-enum-instance.md)、[コアタイプ抽象型](types-abstract-core-type.md)、[Dynamic](types-dynamic.md).
* 型パラメータは[Dynamic](types-dynamic.md)でなければならない。

---

Previous section: [switch](expression-switch.md)

Next section: [return](expression-return.md)