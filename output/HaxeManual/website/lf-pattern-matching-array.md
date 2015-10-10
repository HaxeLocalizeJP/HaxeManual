## 6.4.5 配列マッチング

配列は固定長のマッチングを行うことができます。

```haxe
    var myArray = [1, 6];
    var match = switch(myArray) {
      case [2, _]: "0";
      case [_, 6]: "1";
      case []: "2";
      case [_, _, _]: "3";
      case _: "4";
    }
    trace(match); // 1
```

この例では、`array[1]`が`6`にマッチし、`array[0]`は何でもよいので、`1`が出力されます。

---

Previous section: [構造体マッチング](lf-pattern-matching-structure.md)

Next section: [orパターン](lf-pattern-matching-or.md)