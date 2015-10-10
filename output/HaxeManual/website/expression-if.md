## 5.16 if

条件分岐式は`if`キーワードから始まり、小かっこ(`()`)で囲んだ条件式、条件が真だった場合に評価される式となります。

```haxe
if (condition) expression;
```

条件式は`Bool`型でなくてはいけません。

オプションとして、`else`キーワードを続けて、その後に、元の条件が偽だった場合に実行される式を記述することができます。

```haxe
if (condition) expression1 else expression2;
```

`expression2`は以下のように、また別の`if`式を持つかもしれません。

```haxe
if (condition1) expression1
else if(condition2) expression2
else expression3
```

`if`式に値が要求される場合（たとえば、`var x = if(condition) expression1 else expression2`というふうに）、型付け器は`expression1`と`expression2`の型を[単一化](type-system-unification.md)します。`else`式がなかった場合、型は`Void`であると推論されます。

---

Previous section: [do-whileループ](expression-do-while.md)

Next section: [switch](expression-switch.md)