## 5.14 whileループ

通常の`while`ループは`while`キーワードから始まり、小かっこ(`(`)、条件式が続き、小かっこ閉(`)`)を閉じて、ループ本体の式で終わります。

```haxe
while(condition) expression;
```

条件式は`Bool`型でなくてはいけません。

各くり返しで条件式は評価されます。`false`と評価された場合ループは終了します。そうでない場合、ループ本体の式が評価されます。

```haxe
class Main {
  static public function main() {
    var f = 0.0;
    while (f < 0.5) {
      trace(f);
      f = Math.random();
    }
  }
}
```

この種類の`while`ループはループ本体が一度も評価されないことがあります。条件式が最初から`false`だった場合です。この点が[do-whileループ](expression-do-while.md)との違いです。

---

Previous section: [forループ](expression-for.md)

Next section: [do-whileループ](expression-do-while.md)