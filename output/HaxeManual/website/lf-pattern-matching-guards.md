## 6.4.7 ガード

`case ... if(condition):`の構文を使ってパターンをさらに限定することができます。

```haxe
    var myArray = [7, 6];
    var s = switch(myArray) {
      case [a, b] if (b > a):
        b + ">" +a;
      case [a, b]:
        b + "<=" +a;
      case _: "found something else";
    }
    trace(s); // 6<=7
```

最初のケースは追加のガード条件`if (b > a)`を持っています。このケースはこの条件が正だった場合のみ選択され、それ以外の場合は次のケースとのマッチングが続きます。

---

Previous section: [orパターン](lf-pattern-matching-or.md)

Next section: [複数の値のマッチング](lf-pattern-matching-tuples.md)