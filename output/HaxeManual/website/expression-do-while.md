## 5.15 do-whileループ

do-whileループは`do`キーワードから始まり、次にループ本体の式が来ます。その後に`while`、小かっこ(`(`)、条件式、小かっこ閉(`)`)となります。

```haxe
do expression while(condition);
```

条件式は`Bool`型でなくてはいけません。

この構文を見てわかるとおり、[while](expression-while.md)ループの場合とは違ってループ本体の式は少なくとも一度は評価をされます。

---

Previous section: [whileループ](expression-while.md)

Next section: [if](expression-if.md)